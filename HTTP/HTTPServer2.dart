import "dart:io";
import 'dart:async';

// Handler for HTTP Get Request.
Future handleGetRequest(HttpRequest req) async {
  // #1 Retrieve an associated HttpResponse object in HttpRequst object.
  HttpResponse res = req.response;

  // #2 Do something : Example - Write text body in the response.
  res.write('${DateTime.now()}: Hello World!');

  // #3 Close the response and send it to the client.
  await res.close();
}

// Handler for not allowed HTTP Request.
Future handleNotAllowedRequest(HttpRequest req) async {
  // #1 Retrieve an associated HttpResponse object in HttpRequst object.
  HttpResponse res = req.response;

  // #2 Do something : Example - Write text body in the response.
  res
    ..statusCode = HttpStatus.methodNotAllowed
    ..write('${DateTime.now()}: Unsupported request: ${req.method}.');

  // #3 Close the response and send it to the client.
  await res.close();
}

// Handler for HTTP Request.
Future handleRequest(HttpRequest req) async {
  // #1 Do something based on HTTP request types.
  switch (req.method) {
    // #2 GET Request.
    case 'GET':
      // Print log message and activate HTTP Get Request handler.
      stdout.writeln(
          "${DateTime.now()}: GET ${req.uri}"); // req.uri.path -> URI의 Path정보만출력.
      await handleGetRequest(req); // await 지우고 (parameter) 사용시 에러 안뜸
      break;
    // #3 Other Requests.
    default:
      stdout.writeln("${DateTime.now()}: ${req.method} not allowed");
      await handleNotAllowedRequest(req);
  }
}

Future main() async {
  // #1 Specify HTTP Server address (localhost) and port.
  final HOST = InternetAddress.loopbackIPv4;
  final PORT = 4040;

  // #2 Starts listening for HTTP requests on the address and port.
  var httpServer = await HttpServer.bind(HOST, PORT);
  stdout.writeln(
      "${DateTime.now()}: HTTP Server running at ${HOST.address}:$PORT");

  // #3 Listening for HTTP requests and handle requests.
  await for (HttpRequest httpRequest in httpServer) {
    try {
      // #3.1 Activate a HTTP Request handler
      handleRequest(httpRequest);
    } catch (e) {
      // #3.2 Print message at exception handling case
      stdout.writeln('${DateTime.now()}: Exception in handleRequest: $e');
    }
  }
}
