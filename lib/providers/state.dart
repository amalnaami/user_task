import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_task/utils/localization/language_provider.dart';
import 'package:user_task/repositories/repository.dart';
import 'package:user_task/services/api_manger.dart';

final api = ApiManger(Dio()..interceptors.add(LogInterceptor()));
final apiProvider = Provider<Repository>((ref) => Repository(api));
final languageProvider = Provider<LanguageProvider>(
  (ref) => LanguageProvider(),
);
