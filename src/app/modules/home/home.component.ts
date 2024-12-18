import { Component } from '@angular/core';
import { AuthService } from '../../core/services/auth.service';

@Component({
  selector: 'app-home',
  standalone: true,
  template: `
    <h1>Bienvenido al Home</h1>
    <button (click)="logout()">Cerrar sesión</button>
  `,
})
export class HomeComponent {
  constructor(private authService: AuthService) {}

  logout(): void {
    this.authService.logout();
  }
}
