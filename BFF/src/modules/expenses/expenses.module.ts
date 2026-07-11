import { Module } from '@nestjs/common';
import { ExpensesController } from './expenses.controller';
import { DotnetService } from '../../dotnet/dotnet.service';

@Module({ controllers: [ExpensesController], providers: [DotnetService] })
export class ExpensesModule {}
