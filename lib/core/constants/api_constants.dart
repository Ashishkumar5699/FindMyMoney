class ApiConstants {
  static const String baseUrl =
      'https://pnjbdetnetdevwin-bwfweggteaefh7au.centralindia-01.azurewebsites.net';

  static const String health = '/api/health';
  static const String login = '/api/findmymoney/Auth/login';
  static const String register = '/api/findmymoney/Auth/register';

  static String expenses(String userId) => '/api/findmymoney/Expenses/$userId';
  static String expense(String userId, String id) =>
      '/api/findmymoney/Expenses/$userId/$id';

  static String incomes(String userId) => '/api/findmymoney/Incomes/$userId';
  static String income(String userId, String id) =>
      '/api/findmymoney/Incomes/$userId/$id';

  static String emis(String userId) => '/api/findmymoney/Emis/$userId';
  static String emi(String userId, String id) =>
      '/api/findmymoney/Emis/$userId/$id';
}
