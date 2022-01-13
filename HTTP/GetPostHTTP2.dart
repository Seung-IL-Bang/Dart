/*
앞서에서 URI에 RESTful의 형태로 함수를 호출하는 것처럼, 
복수의 파라메타에 대한 값을 전달하는 방법을 보았습니다. 
더 많은 정보를 전달하고자 한다면 HTTP POST Request를 사용할 수 있습니다. 
예를들어 HTTP Client로부터 Map 타입의 정보를 HTTP Server가 수신하여, 
이들을 화일에 저장하는 예제를 생각할 수 있습니다.
이럴때 언어와 독립적으로 정보를 저장하는 대표적인 형태가 JSON(JavaScript Object Notation) 입니다.
단어는 생소하지만, Dart 언어의 Map과 거의 같은 형태라고 보면 됩니다. 
*/

import "dart:io";
import 'dart:async';
import 'dart:convert';

// Handler for HTTP GET Request.
Future handleGetRequest(HttpRequest req) async {
  // #1 Retrieve an associated HttpResponse object in HttpRequst object.
  HttpResponse res = req.response;

  // #2 Do something : Example - Write text body in the response.
  res
    ..statusCode = HttpStatus.ok
    ..write('${DateTime.now()}: Hello World!');

  // #3 Close the response and send it to the client.
  await res.close();
}

// Handler for HTTP POST Request.
Future handlePostRequest(HttpRequest req) async {
  // #1 Retrieve an associated HttpResponse object in HttpRequst object.
  HttpResponse res = req.response;

  // #2 Do something : Example - Write file based on the reseived JSON.
  if (req.headers.contentType?.mimeType == 'application/json') {
    try {
      // #2.1 utf8.decoder.bind(req) : Retrieve multiple chunks within a same HTTP Request.
      // #2.2 .join() : Puts the chunks together.
      String jsonContent = await utf8.decoder.bind(req).join();

      // #2.3 Retrieve file name from HTTP POST Request
      var jsonFileName = req.uri.pathSegments.last;

      // #2.4 Save the received JSON content into a file in a current working directory
      await File(jsonFileName).writeAsString(jsonContent, mode: FileMode.write);

      // #2.5 Decode the received JSON content and concert into MAP format
      var jsonData = jsonDecode(jsonContent) as Map;

      // #2.6 Make a response for success case
      req.response
        ..statusCode = HttpStatus.ok
        ..write('${DateTime.now()}: Wrote data for ${jsonData}.');
    } catch (e) {
      // #2.7 Make a response for failed case
      res
        ..statusCode = HttpStatus.internalServerError
        ..write('${DateTime.now()}: Exception during file I/O: $e.');
    }
  } else {
    // 2.8 Make a response for not supported POST Request (not a JSON format)
    res
      ..statusCode = HttpStatus.methodNotAllowed
      ..write(
          '${DateTime.now()}: Unsupported POST type: ${req.headers.contentType?.mimeType}.');
  }

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
    // #1.1 GET Request.
    case 'GET':
      // Print log message and activate HTTP Get Request handler.
      stdout.writeln("${DateTime.now()}: GET ${req.uri.queryParameters}");
      await handleGetRequest(req);
      break;
    // #1.2 GET Request.
    case 'POST':
      // Print log message and activate HTTP Post Request handler.
      stdout.writeln("${DateTime.now()}: POST ${req.uri}");
      await handlePostRequest(req);
      break;
    // #1.3 Other Requests.
    default:
      stdout.writeln("${DateTime.now()}: ${req.method} not allowed");
      await handleNotAllowedRequest(req);
  }
}

Future main() async {
  // #1 Specify HTTP Server address (localhost) and port.
  final HOST = InternetAddress
      .loopbackIPv4; // or "0.0.0.0" to allow access from other machines
  final PORT = 4049;

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
