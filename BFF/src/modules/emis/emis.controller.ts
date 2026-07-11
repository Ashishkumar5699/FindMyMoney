import { Controller, Get, Post, Put, Delete, Body, Param, UseGuards, Request, Headers } from '@nestjs/common';
import { JwtAuthGuard } from '../../common/guards/jwt-auth.guard';
import { DotnetService } from '../../dotnet/dotnet.service';

@Controller('emis')
@UseGuards(JwtAuthGuard)
export class EmisController {
  constructor(private dotnet: DotnetService) {}

  @Get()
  getAll(@Request() req: any, @Headers('authorization') auth: string) {
    return this.dotnet.getEmis(req.user.userId, this.token(auth));
  }

  @Post()
  create(@Request() req: any, @Headers('authorization') auth: string, @Body() body: any) {
    return this.dotnet.createEmi(req.user.userId, body, this.token(auth));
  }

  @Get(':id')
  getOne(@Request() req: any, @Headers('authorization') auth: string, @Param('id') id: string) {
    return this.dotnet.getEmi(req.user.userId, id, this.token(auth));
  }

  @Put(':id')
  update(@Request() req: any, @Headers('authorization') auth: string, @Param('id') id: string, @Body() body: any) {
    return this.dotnet.updateEmi(req.user.userId, id, body, this.token(auth));
  }

  @Delete(':id')
  remove(@Request() req: any, @Headers('authorization') auth: string, @Param('id') id: string) {
    return this.dotnet.deleteEmi(req.user.userId, id, this.token(auth));
  }

  private token(auth: string) { return auth?.replace('Bearer ', '') ?? ''; }
}
