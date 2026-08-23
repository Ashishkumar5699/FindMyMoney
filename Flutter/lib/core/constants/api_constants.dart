class ApiConstants {
  static const String baseUrl = 'https://findmymoney.pnjb.in';

  static const String health = '/api/health';
  static const String login = '/api/auth/login';
  static const String register = '/api/auth/register';

  static const String expenses = '/api/expenses';
  static String expense(String id) => '/api/expenses/$id';

  static const String incomes = '/api/incomes';
  static String income(String id) => '/api/incomes/$id';

  static const String emis = '/api/emis';
  static String emi(String id) => '/api/emis/$id';

  static const String investments = '/api/investments';
  static String investment(String id) => '/api/investments/$id';

  static const String paymentSources = '/api/payment-sources';
  static String paymentSource(String id) => '/api/payment-sources/$id';
  static String paymentSourceStatus(String id) =>
      '/api/payment-sources/$id/status';

  static const String categories = '/api/categories';
  static String category(String id) => '/api/categories/$id';

  static const String transfers = '/api/transfers';
  static String transfer(String id) => '/api/transfers/$id';

  static const String ccBills = '/api/cc-bills';
  static const String ccBillsGenerate = '/api/cc-bills/generate';
  static String ccBill(String id) => '/api/cc-bills/$id';

  static const String loans = '/api/loans';
  static String loan(String id) => '/api/loans/$id';
  static String loanPay(String id) => '/api/loans/$id/pay';

  static const String aiChat = '/api/ai/chat';
  static const String aiParseSms = '/api/ai/parse-sms';

  static const String khataContacts = '/api/khata';
  static String khataContact(String id) => '/api/khata/$id';
  static String khataTransactions(String contactId) => '/api/khata/$contactId/transactions';
  static String khataTransaction(String contactId, String txnId) => '/api/khata/$contactId/transactions/$txnId';
  static String khataSettle(String contactId) => '/api/khata/$contactId/settle';
}
