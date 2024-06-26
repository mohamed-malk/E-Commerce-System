import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Subscription } from 'rxjs';
import { AdminOrder } from 'src/app/models/admin-order';
import { ICstDto } from 'src/app/models/deletecomment';
import { AdminOrderService } from 'src/app/services/admin-order.service';
import { DeleteService } from 'src/app/services/delete.service';

import Swal from 'sweetalert2';

@Component({
  selector: 'app-delete',
  templateUrl: './delete.component.html',
  styleUrls: ['./delete.component.css']
})


export class DeleteComponent implements OnInit {
  cstList: ICstDto[]=[]
  p:number =1;
  waiting : boolean = true;
  noitem : boolean = false;
   constructor (private CSTdelete :DeleteService){}

  ngOnInit(): void {
    this.getallcst()
  }
cstsub:Subscription |undefined
deletesub:Subscription |undefined
getallcst(){
  this.cstsub=this.CSTdelete.getCSTall().subscribe({
    next:(data)=>{
      this.waiting = false;
      if (data.length ==0) {
        this.noitem = true
      }
      this.cstList=data
    },
    error:(e)=>{
      console.log('errrrrrrrrrrrrrrrrrrrror',e)
      this.noitem = true;
    }
  })

}
deletecSt(Id:number){
  this.deletesub=this.CSTdelete.deletebtitem(Id).subscribe({
    next:(data)=>{
      console.log("dn delete")
    },
    error:(e)=>{
        Swal.fire({
            title: 'لا يمكنك حذف هذا المستخدم لديه طلبات تحت التنفيذ!',
            confirmButtonColor: '#198754', // Change this to the color you prefer
          });
      console.log('errrrrrrrrrrrrrrrrrrrror delete',e)
    }
  })
}
}
