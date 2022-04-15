import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  const token = String.fromEnvironment('TOKEN');
  if (token != '') {
    const authorization = 'token ' + token;
    dio.options.headers['Authorization'] = authorization;
  }
  return dio;
});
