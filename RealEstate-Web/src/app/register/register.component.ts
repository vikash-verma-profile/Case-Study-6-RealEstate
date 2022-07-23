import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { UserData } from '../models/UserData';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html'

})
export class RegisterComponent implements OnInit {

  registerUserData: UserData = new UserData();
  constructor(private _auth: AuthService, private _router: Router) { }

  ngOnInit(): void {
  }
  flagVendor(event: any) {
    if (event.target.value == 'User') {
      this.registerUserData.isVender = 0;
    } else {
      this.registerUserData.isVender = 1;
    }

  }
  registerUser() {

    console.log(this.registerUserData);
    this._auth.registerUser(this.registerUserData).subscribe(res => {
      localStorage.setItem('token',res.token);
      console.log(res);
      if (res.isAdmin)
             this._router.navigate(['/admin']); 

      else if (res.isVender)
             this._router.navigate(['/vender']);    

        else 
        this._router.navigate(['/account']);
    },
      err => console.log(err));
  }

}