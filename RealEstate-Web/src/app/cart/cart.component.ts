import { Component, OnInit } from '@angular/core';
import { CartService } from '../services/cart.services';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html'
 
})
export class CartComponent implements OnInit {

  public products : any = [];
  
  public grandTotal !: number;
  constructor(private cartService : CartService) { }

  ngOnInit(): void {
    this.cartService.getProducts()
    .subscribe(res=>{
      this.products = res;
    })
  }
  removeItem(item: any){
    this.cartService.removeCartItem(item);
  }
 
  emptycart(){
    this.cartService.removeAllCart();
  }

}