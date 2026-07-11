export default () => ({
  port: parseInt(process.env.PORT ?? '4000', 10),
  dotnet: {
    apiUrl: process.env.DOTNET_API_URL ?? 'https://pnjbdetnetdevwin-bwfweggteaefh7au.centralindia-01.azurewebsites.net',
    jwtSecret: process.env.DOTNET_JWT_SECRET ?? 'this is my custom Secret key for authenticationthis is my custom Secret key for authentication',
  },
  allowedOrigins: (process.env.ALLOWED_ORIGINS ?? 'http://localhost:3000,http://localhost:3001').split(','),
});
