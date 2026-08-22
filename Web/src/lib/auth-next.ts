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
    async jwt({ token, account, profile }) {
      if (account?.provider === 'google' && profile?.sub) {
        token.googleId = profile.sub;
      }
      return token;
    },
    session({ session, token }) {
      if (token.googleId) (session as unknown as Record<string, unknown>).googleId = token.googleId;
      return session;
    },
  },
});
