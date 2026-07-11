import { Controller, Get, Post, Put, Delete, Body, Param, Query, UseGuards, Request, Headers } from '@nestjs/common';
import { JwtAuthGuard } from '../../common/guards/jwt-auth.guard';
import { DotnetService } from '../../dotnet/dotnet.service';

@Controller('expenses')
@UseGuards(JwtAuthGuard)
export class ExpensesController {
  constructor(private dotnet: DotnetService) {}

  @Get()
  getAll(@Request() req: any, @Headers('authorization') auth: string, @Query() query: any) {
    return this.dotnet.getExpenses(req.user.userId, this.token(auth), query);
  }

  @Post()
  create(@Request() req: any, @Headers('authorization') auth: string, @Body() body: any) {
    return this.dotnet.createExpense(req.user.userId, body, this.token(auth));
  }

  @Get(':id')
  getOne(@Request() req: any, @Headers('authorization') auth: string, @Param('id') id: string) {
    return this.dotnet.getExpense(req.user.userId, id, this.token(auth));
  }

  @Put(':id')
  update(@Request() req: any, @Headers('authorization') auth: string, @Param('id') id: string, @Body() body: any) {
    return this.dotnet.updateExpense(req.user.userId, id, body, this.token(auth));
  }

  @Delete(':id')
  remove(@Request() req: any, @Headers('authorization') auth: string, @Param('id') id: string) {
    return this.dotnet.deleteExpense(req.user.userId, id, this.token(auth));
  }

  private token(auth: string) { return auth?.replace('Bearer ', '') ?? ''; }
}
