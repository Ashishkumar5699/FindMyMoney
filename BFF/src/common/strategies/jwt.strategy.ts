import { Injectable, UnauthorizedException } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { ConfigService } from '@nestjs/config';

export interface JwtPayload {
  nameid?: string;
  unique_name?: string;
  sub?: string;
  email?: string;
  exp?: number;
}

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(config: ConfigService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: config.get<string>('dotnet.jwtSecret'),
      algorithms: ['HS512'],
    });
  }

  async validate(payload: JwtPayload) {
    const userId = payload.nameid ?? payload.sub ?? payload.unique_name;
    if (!userId) throw new UnauthorizedException('Invalid token');
    return { userId, email: payload.email ?? '' };
  }
}
