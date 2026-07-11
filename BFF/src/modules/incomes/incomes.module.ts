import { Module } from '@nestjs/common';
import { IncomesController } from './incomes.controller';
import { DotnetService } from '../../dotnet/dotnet.service';

@Module({ controllers: [IncomesController], providers: [DotnetService] })
export class IncomesModule {}
