import { Routes } from '@angular/router';
import {HomeComponent} from "./modules/home/home.component";
import {LoginComponent} from "./modules/auth/login.component";
import {AuthGuard} from "./core/guards/auth.guard";

export const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: 'home', component: HomeComponent, canActivate: [AuthGuard] },
  { path: '**', redirectTo: 'login' },
];
