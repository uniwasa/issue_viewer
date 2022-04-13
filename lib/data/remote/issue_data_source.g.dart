// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _IssueDataSource implements IssueDataSource {
  _IssueDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.github.com/repos/flutter/flutter/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Issue>> getIssues(
      {required perPage, required page, labels}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'per_page': perPage,
      r'page': page,
      r'labels': labels
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Issue>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/issues',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Issue.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
