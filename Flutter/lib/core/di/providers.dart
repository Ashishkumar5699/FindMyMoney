import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../data/api/api_client.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/repositories/expense_repository_impl.dart';
import '../../data/repositories/income_repository_impl.dart';
import '../../data/repositories/emi_repository_impl.dart';
import '../../data/repositories/investment_repository_impl.dart';
import '../../data/repositories/payment_source_repository_impl.dart';
import '../../data/repositories/category_repository_impl.dart';
import '../../data/repositories/transfer_repository_impl.dart';
import '../../data/repositories/cc_bill_repository_impl.dart';
import '../../data/repositories/loan_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/expense_repository.dart';
import '../../domain/repositories/income_repository.dart';
import '../../domain/repositories/emi_repository.dart';
import '../../domain/repositories/investment_repository.dart';
import '../../domain/repositories/payment_source_repository.dart';
import '../../domain/repositories/category_repository.dart';
import '../../domain/repositories/transfer_repository.dart';
import '../../domain/repositories/cc_bill_repository.dart';
import '../../domain/repositories/loan_repository.dart';

final dioProvider = Provider<Dio>((ref) => createDio());

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(ref.read(dioProvider)),
);

final expenseRepositoryProvider = Provider<ExpenseRepository>(
  (ref) => ExpenseRepositoryImpl(ref.read(dioProvider)),
);

final incomeRepositoryProvider = Provider<IncomeRepository>(
  (ref) => IncomeRepositoryImpl(ref.read(dioProvider)),
);

final emiRepositoryProvider = Provider<EmiRepository>(
  (ref) => EmiRepositoryImpl(ref.read(dioProvider)),
);

final investmentRepositoryProvider = Provider<InvestmentRepository>(
  (ref) => InvestmentRepositoryImpl(ref.read(dioProvider)),
);

final paymentSourceRepositoryProvider = Provider<PaymentSourceRepository>(
  (ref) => PaymentSourceRepositoryImpl(ref.read(dioProvider)),
);

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) => CategoryRepositoryImpl(ref.read(dioProvider)),
);

final transferRepositoryProvider = Provider<TransferRepository>(
  (ref) => TransferRepositoryImpl(ref.read(dioProvider)),
);

final ccBillRepositoryProvider = Provider<CcBillRepository>(
  (ref) => CcBillRepositoryImpl(ref.read(dioProvider)),
);

final loanRepositoryProvider = Provider<LoanRepository>(
  (ref) => LoanRepositoryImpl(ref.read(dioProvider)),
);
