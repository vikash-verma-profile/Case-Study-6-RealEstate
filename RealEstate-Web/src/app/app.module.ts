import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { HomeComponent } from './Account/home.component';
import { AuthService } from './services/auth.service';
import { PropertyComponent } from './property/property.component';
import { OrderComponent } from './order/order.component';
import { Home1Component } from './home1/home1.component';
import { HouseregisterComponent } from './houseregister/houseregister.component';
import { VenderComponent } from './vender/vender.component';
import { AdminComponent } from './admin/admin.component';
import { FilterPipe } from './shared/filter.pipe';
import { SseeOrderComponent } from './ssee-order/ssee-order.component';
import { CartComponent } from './cart/cart.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    HomeComponent,
    PropertyComponent,
    OrderComponent,
    Home1Component,
    HouseregisterComponent,
    VenderComponent,
    AdminComponent,
    FilterPipe,
    SseeOrderComponent,
    CartComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [AuthService],
  bootstrap: [AppComponent]
})
export class AppModule { }
