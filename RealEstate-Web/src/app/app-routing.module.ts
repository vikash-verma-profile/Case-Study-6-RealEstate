import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { HomeComponent } from './Account/home.component';
import { PropertyComponent} from './property/property.component';
import { OrderComponent} from './order/order.component';
import { Home1Component } from './home1/home1.component';
import { HouseregisterComponent } from './houseregister/houseregister.component';
import { VenderComponent } from './vender/vender.component';
import { AdminComponent } from './admin/admin.component';
import { SseeOrderComponent } from './ssee-order/ssee-order.component';
import { CartComponent } from './cart/cart.component';

const routes: Routes = [

  {
    path: 'account',
    component: HomeComponent
  },
  {
    path: 'see-order',
    component: SseeOrderComponent
  },
  
  {
    path: 'home1',
    component: Home1Component
  },
  {
    path: 'cart',
    component: CartComponent
  },

  {
    path: 'order',
    component: OrderComponent
  },
  
  {
    path: 'houseregister',
    component: HouseregisterComponent
  },

  {
    path: 'vender',
    component: VenderComponent
  },

  {
    path: 'admin',
    component: AdminComponent
  },

  {
    path: 'login',
    component: LoginComponent
  },


  {
    path: 'property',
    component: PropertyComponent
  },
  {
    path: 'register',
    component: RegisterComponent
  }


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
