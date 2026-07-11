import { IsString, IsNotEmpty, IsEmail } from 'class-validator';

export class RegisterDto {
  @IsString() @IsNotEmpty() userName: string;
  @IsEmail() email: string;
  @IsString() @IsNotEmpty() password: string;
}
