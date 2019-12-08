class Result<T> {
  final T data;
  final String message;
  final Exception exception;

  Result({this.data, this.message, this.exception});

  bool get isSuccessful => data != null;

  factory Result.success(T data) => Result(data: data);

  factory Result.failure([String message, Exception exception]) =>
      Result(message: message, exception: exception);
}
