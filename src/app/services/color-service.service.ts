import { Icolor } from './../models/icolor';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { observableToBeFn } from 'rxjs/internal/testing/TestScheduler';

@Injectable({
  providedIn: 'root'
})
export class ColorServiceService {

  baseURL : string = 'http://www.srm.somee.com/api/General'
  constructor(private http: HttpClient) {

   }

   getAllColor() : Observable<Icolor[]>{
    return this.http.get<Icolor[]>(`${this.baseURL}/GetAllColor`)
   }

   getcolorByID (id: number) : Observable<Icolor> {
    return this.http.get<Icolor>(`${this.baseURL}/GetColor?id=${id}'`)
   }

   addcolor(name: string, code: string) {
    return this.http.post(`${this.baseURL}/AddColor?name=${encodeURIComponent(name)}&code=${encodeURIComponent(code)}`, {});
  }

  editcolor (color:Icolor ){
    return this.http.put(`${this.baseURL}/UpdateColor`,color)
  }
  
  deletecolor(id: number){
    return this.http.delete(`${this.baseURL}/DeleteColor?id=${id}`)
  }
}
