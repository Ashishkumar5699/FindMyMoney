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
}
