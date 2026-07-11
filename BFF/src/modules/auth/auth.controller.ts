import { Controller, Post, Body } from '@nestjs/common';
import { DotnetService } from '../../dotnet/dotnet.service';
import { LoginDto } from './dto/login.dto';
import { RegisterDto } from './dto/register.dto';

@Controller('auth')
export class AuthController {
  constructor(private dotnet: DotnetService) {}

  @Post('login')
  login(@Body() dto: LoginDto) {
    return this.dotnet.login(dto);
  }

  @Post('register')
  register(@Body() dto: RegisterDto) {
    return this.dotnet.register(dto);
  }
}
