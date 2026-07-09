import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../data/api/api_client.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/repositories/expense_repository_impl.dart';
import '../../data/repositories/income_repository_impl.dart';
import '../../data/repositories/emi_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/expense_repository.dart';
import '../../domain/repositories/income_repository.dart';
import '../../domain/repositories/emi_repository.dart';

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
