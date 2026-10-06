import NextAuth from 'next-auth';
import Google from 'next-auth/providers/google';

export const { handlers, auth, signIn, signOut } = NextAuth({
  providers: [
    Google({
      clientId: process.env.GOOGLE_CLIENT_ID!,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET!,
    }),
  ],
  secret: process.env.AUTH_SECRET,
  pages: { signIn: '/login' },
  callbacks: {
    async jwt({ token, account }) {
      // Keep Google's signed ID token in the encrypted session cookie only (never in the client session):
      // /api/auth/google-finalize sends it to .NET, which verifies it before signing the user in.
      if (account?.provider === 'google' && account.id_token) {
        token.googleIdToken = account.id_token;
      }
      return token;
    },
  },
});
