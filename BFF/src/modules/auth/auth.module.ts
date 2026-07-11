import { Module } from '@nestjs/common';
import { AuthController } from './auth.controller';
import { DotnetService } from '../../dotnet/dotnet.service';

@Module({ controllers: [AuthController], providers: [DotnetService] })
export class AuthModule {}
