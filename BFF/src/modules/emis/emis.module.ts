import { Module } from '@nestjs/common';
import { EmisController } from './emis.controller';
import { DotnetService } from '../../dotnet/dotnet.service';

@Module({ controllers: [EmisController], providers: [DotnetService] })
export class EmisModule {}
