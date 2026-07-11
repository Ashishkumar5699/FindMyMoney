import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { HttpModule } from '@nestjs/axios';
import { PassportModule } from '@nestjs/passport';
import configuration from './config';
import { JwtStrategy } from './common/strategies/jwt.strategy';
import { AuthModule } from './modules/auth/auth.module';
import { ExpensesModule } from './modules/expenses/expenses.module';
import { IncomesModule } from './modules/incomes/incomes.module';
import { EmisModule } from './modules/emis/emis.module';

@Module({
  imports: [
    ConfigModule.forRoot({ load: [configuration], isGlobal: true }),
    HttpModule.register({ timeout: 60_000 }),
    PassportModule,
    AuthModule,
    ExpensesModule,
    IncomesModule,
    EmisModule,
  ],
  providers: [JwtStrategy],
})
export class AppModule {}
