import { HttpClient } from '@angular/common/http';


import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PropertyService {

  
  public search=new BehaviorSubject<string>("");
  private productUrl = "https://localhost:44344/api/Property";

  //Azure
 // private productUrl = "https://zagade123.azurewebsites.net/api/Property";
  

  constructor(private http: HttpClient,private _router:Router) { }
 getProperty() {
    return this.http.get<any>(this.productUrl);
  }

}