import 'dart:io';

String certificateChain = 'server_chain.pem';
String serverKey = 'server_key.pem';

Future main() async {
  var serverContext = SecurityContext(); /*1*/
  serverContext.useCertificateChain(certificateChain); /*2*/
  serverContext.usePrivateKey(serverKey, password: 'dartdart'); /*3*/

  var server = await HttpServer.bindSecure(
    'localhost',
    4047,
    serverContext, /*4*/
  );
  print('Listening on localhost:${server.port}');
  await for (HttpRequest request in server) {
    request.response.write('Hello, world!');
    await request.response.close();
  }
}
