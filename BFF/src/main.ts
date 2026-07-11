import 'reflect-metadata';
import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { AppModule } from './app.module';
import type { IncomingMessage, ServerResponse } from 'http';

let app: any;

async function bootstrap() {
  const nestApp = await NestFactory.create(AppModule, { logger: ['error', 'warn', 'log'] });

  nestApp.enableCors({
    origin: (origin: string | undefined, cb: Function) => {
      // Allow requests with no origin (mobile apps, curl) and configured origins
      if (!origin || process.env.ALLOWED_ORIGINS?.split(',').some(o => o.trim() === origin)) {
        cb(null, true);
      } else {
        cb(null, true); // permissive for now — tighten in prod via env var
      }
    },
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
  });

  nestApp.useGlobalPipes(new ValidationPipe({ whitelist: true, transform: true }));
  nestApp.setGlobalPrefix('api');

  await nestApp.init();
  return nestApp;
}

// Vercel serverless export
export default async function handler(req: IncomingMessage, res: ServerResponse) {
  if (!app) app = await bootstrap();
  const httpAdapter = app.getHttpAdapter();
  httpAdapter.getInstance()(req, res);
}

// Local dev
if (require.main === module) {
  bootstrap().then(a => a.listen(process.env.PORT ?? 4000, () =>
    console.log(`FindMyMoney BFF running on :${process.env.PORT ?? 4000}`)
  ));
}
