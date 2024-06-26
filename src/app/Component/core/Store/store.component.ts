import { ProductService } from './../../../services/product.service';
import { IproductShow } from './../../../models/i-product-variant';
import { Component, OnDestroy, OnInit } from '@angular/core';
import { ComponentUrl } from 'src/app/models/unit';
import { Subscription } from 'rxjs';
import { ProductFormService } from 'src/app/services/product-form.service';
import { ActivatedRoute, Router } from '@angular/router';
import { CategoryService } from 'src/app/services/category.service';
import { ICategory } from 'src/app/models/i-category';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AuthService } from 'src/app/auth.service';
import { SigninFormComponent } from '../SignComp/signin-form/signin-form.component';
import { FavoriteService } from 'src/app/services/favorite.service';
import { IaddFavorite } from 'src/app/models/Ifav';
import { NgxPaginationModule } from 'ngx-pagination';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-store',
  templateUrl: './store.component.html',
  styleUrls: ['./store.component.css'],
})
export class StoreComponent implements OnInit {
  ComponentUrl = ComponentUrl;
  inputText: string = '';
  maxPrice: number = 0;
  minPrice: number = 0;
  favlist: IaddFavorite[] = [];
  isFav: boolean = false;
  toggle() {
    var blur = document.getElementById('blur');
    blur?.classList.toggle('active');
    var popup = document.getElementById('popup');
    popup?.classList.toggle('active');
  }

  removeActiveClassIfBothExist() {
    console.log('remove filter');
    var blur = document.getElementById('blur');
    var popup = document.getElementById('popup');

    // Check if both elements have the class 'active'
    if (
      blur?.classList.contains('active') &&
      popup?.classList.contains('active')
    ) {
      console.log('it will remove cause it show');
      blur?.classList.remove('active');
      popup?.classList.remove('active');
    }
  }

  /**fetch data */

  ProductList: IproductShow[] = [];
  MainList: IproductShow[] = [];
  categoryList: ICategory[] = [];

  pageWhat: string = 'الكل';
  categoryName: string = '';
  productName: string = '';
  customerId: number = 0;
  noitem: boolean = false;
  p: number = 1;
  fromPrice: number = 0;
  toPrice: number = 10000;
  constructor(
    private _Router: Router,
    private prodServ: ProductFormService,
    private cateServ: CategoryService,
    private activeRoute: ActivatedRoute,
    private auth: AuthService,
    private _favService: FavoriteService
  ) {}

  ngOnInit(): void {
    this.removeActiveClassIfBothExist();
    this.customerId = this.auth.id;
    this.prodServ.getlength();
    this.getAllCategory();

    console.log('start store');
    this.activeRoute.params.subscribe((params) => {
      this.categoryName = params['catgoryname'];
      this.productName = params['productname'];
      console.log(this.categoryName); // Convert the parameter to a number
      if (this.categoryName) {
        this.nameSearchForm.get('name')?.setValue('');
        this.pageWhat = this.categoryName;
        console.log(this.categoryName);
        this.prodServ.gatProductbyCategoryName2(this.categoryName).subscribe(
          (products) => {
            this.ProductList = products;
            this.MainList = products;
            if (this.ProductList.length == 0) {
              this.noitem = true;
            }
          },
          (error) => {
            console.error('Error fetching products:', error);
            this.noitem = true;
          }
        );
      } else if (this.productName) {
        this.pageWhat = this.productName;
        console.log('product');
        this.getproductByName();
      } else {
        this.prodServ.getAllProduct2().subscribe(
          (products) => {
            this.ProductList = products;
            this.MainList = products;
            if (this.ProductList.length == 0) {
              this.noitem = true;
            }
          },
          (error) => {
            console.error('Error fetching products:', error);
            this.noitem = true;
          }
        );
      }
    });
    if (this.customerId !=0){
      this.getAllfav();
    }
    // this.getAllProduct();
    // console.log("init")
    // console.log(this.auth.allProducts);
    // this.ProductList = this.auth.allProducts;

    // this.prodServ.getAllProduct2();
    // this.ProductList = this.prodServ.productsCache;
  }

  nameSearchForm: FormGroup = new FormGroup({
    name: new FormControl('', [Validators.required]),
  });

  get nameControl() {
    return this.nameSearchForm.get('name');
  }

  PriceSearchForm: FormGroup = new FormGroup({
    minPrice: new FormControl(0),
    maxPrice: new FormControl(0),
  });

  startSearch() {
    this.inputText = this.nameSearchForm.get('name')?.value;
    this.maxPrice = this.PriceSearchForm.get('maxPrice')?.value;
    this.minPrice = this.PriceSearchForm.get('minPrice')?.value;
    console.log(this.inputText);
    console.log('hello man');
    this.applyFilter();
  }
  allProductSub: Subscription | undefined;
  allProdbyCatSub: Subscription | undefined;
  prodByNameSub: Subscription | undefined;
  allCategorySub: Subscription | undefined;
  addFavSub: Subscription | undefined;
  getALLfavsub: Subscription | undefined;
  delFavSub: Subscription | undefined;

  getAllCategory() {
    this.allCategorySub = this.cateServ.getAllCategs().subscribe({
      next: (data) => {
        this.categoryList = data;
      },
      error: (e) => {
        console.log('ERROR when fetch Category :' + e);
      },
    });
  }

  getAllProduct() {
    this.allProductSub = this.prodServ.getAllProduct().subscribe({
      next: (data) => {
        this.ProductList = data;
      },
      error: (e) => {
        console.log('Error when Fetch AllProduct' + e);
      },
    });
  }

  getAllproductByCat() {
    this.allProdbyCatSub = this.prodServ
      .gatProductbyCategoryName(this.categoryName)
      .subscribe({
        next: (data) => {
          console.log(data);
          this.ProductList = data;
        },
        error: (e) => {
          console.log('error when fetch product BY Category' + e);
        },
      });
  }

  getproductByName() {
    this.prodByNameSub = this.prodServ
      .getProductByName(this.productName)
      .subscribe({
        next: (data) => {
          console.log(data);
          this.ProductList = data;
          if (this.ProductList.length == 0) {
            this.noitem = true;
          }
          console.log('producrLisr' + this.ProductList);
        },
        error: (e) => {
          console.log('ERROR when fetch DataByName' + e);
          this.noitem = true;
        },
      });
  }

  pushItemToFavCart(prodId: number) {
    this.auth.userData.subscribe({
      next: () => {
        if (this.auth.userData.getValue() != null) {
          
          const addFav: IaddFavorite = {
            customerId: this.customerId,
            productId: prodId,
          };
          this.addFavSub = this._favService.additemTofav(addFav).subscribe({
            next: (data) => {
              Swal.fire({
                position : 'top-right',
                // icon : 'success',
                showCancelButton : false,
                showConfirmButton : false,
                timer:700,
                titleText:'تم إضافة المنتج إلى قائمة أمنياتك',
                color:'green',
                
              });
              console.log('item Add to Fav Succesfully' + data);
              this.getAllfav();
              this._favService.getNumberOfitemInFavCart();
            },
            error: (e) => {
              console.log('may bt item in fav already');
              console.log('ERROR when add fav to item' + e);
            },
          });
          
        } else {
          Swal.fire({
            title: 'سجل دخول حتى تتمكن من رحلة التسوق معنا!',
            confirmButtonColor: '#198754', // Change this to the color you prefer
          });
        }
      },
    });
  }

  sortProductList(e: any) {
    let option = (e.target as HTMLInputElement).value;
    switch (option) {
      case '2':
        this.ProductList.sort((a, b) => b.price - a.price);
        break;
      case '3':
        this.ProductList.sort((a, b) => a.price - b.price);
        break;
      case '4':
        this.ProductList.sort((a, b) =>
          b.addingDate.localeCompare(a.addingDate)
        );
        break;
      case '5':
        this.ProductList.sort((a, b) => b.avgRating - a.avgRating);
        break;
      default:
        // Default sorting logic (if no option is selected)
        break;
    }
  }

  //  updateToMin() {
  //     // Update the minimum value of "to" input field whenever "from" input field changes
  //     this.toPrice = this.fromPrice;
  //   }
  applyFilter() {
    if (this.maxPrice == this.maxPrice) {
      // If maxPrice is not entered, filter only by name and minimum price
      this.ProductList = this.MainList.filter(
        (item) =>
          item.name.toLowerCase().includes(this.inputText.toLowerCase()) &&
          item.price >= this.minPrice
      );
    } else {
      // Filter by name, minimum price, and maximum price
      this.ProductList = this.MainList.filter(
        (item) =>
          item.name.toLowerCase().includes(this.inputText.toLowerCase()) &&
          item.price >= this.minPrice &&
          item.price <= this.maxPrice
      );
    }

    if (this.ProductList.length == 0) {
      this.noitem = true;
    }
  }

  cancelFilte() {
    this.nameSearchForm.get('name')?.setValue('');
    this.PriceSearchForm.get('maxPrice')?.setValue('');
    this.PriceSearchForm.get('minPrice')?.setValue('');
    this.ProductList = this.MainList;
  }

  checkFav(id: number) {
    for (let item of this.favlist) {
      if (item.productId == id) {
        return true;
      }
    }
    return false;
  }

  getAllfav() {
    this.getALLfavsub = this._favService
      .getallFavbycustomr(this.customerId)
      .subscribe({
        next: (data) => {
          this.favlist = data;
        },
        error: (e) => {
          console.log(e);
        },
      });
  }
  hoverfun(id: number) {
    console.log('hiiiiiii', id);
    console.log(this.favlist);
    for (let iten of this.favlist) {
      if (iten.productId == id) {
        this.isFav = true;
        console.log(true);
      }
    }
  }
  unhoverfun(id: number) {
    console.log('bye', id);
    this.isFav = false;
  }
  removeItemfromFav(id: number) {
    this.delFavSub = this._favService
      .deletefavitem(this.customerId, id)
      .subscribe({
        next: (d) => {
          Swal.fire({
            position : 'top-right',
            // icon : 'success',
            showCancelButton : false,
            showConfirmButton : false,
            timer:700,
            titleText:'تم ازالة المنتج من قائمة أمنياتك' ,
            color:'red',
            
          });
          console.log('doooooooooooooone Delete');
          this.getAllfav();
          console.log(d);
          this._favService.getNumberOfitemInFavCart();
        },
        error: (e) => {
          console.log('ERROE', e);
        },
      });
  }
}
