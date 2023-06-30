class HttpResponse{
  int status;
  dynamic? body;
  dynamic? message;

  HttpResponse({
    required this.status,
    this.body,
    this.message
  });
}