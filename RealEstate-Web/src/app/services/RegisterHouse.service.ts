import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class RegisterHouseService {
  private _productUrl = "https://localhost:44344/api/RegisterHouse";

  //Azure
  //private _productUrl = "https://zagade123.azurewebsites.net/api/RegisterHouse";


  constructor(private http: HttpClient,private _router:Router) { }
  getRequest() {
    return this.http.get<any>(this._productUrl);
  }

}