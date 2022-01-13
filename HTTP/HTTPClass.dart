/* 
1. HTTPRequest : Client가 전달한 요청에 대한 정보를 저장.
2. method Property : HTTP의 표준 명령을 의미하여, GET/PUT/POST 등의 정보를 갖습니다.
3. uri Property : Uri 객체를 저장하는데, scheme, host, prot, querystring과 같이 HTTP Request 객체를 저장하여,  HTTPRequest에 대한 응답 정보를 저장하고 있습니다.
4. headers Property : HTTPHeaders 객체를 저장하여, HTTP Request의 헤더 정보를 포함하는데, ContentType, Content length, date 등의 정보를 저장하고 있습니다.
5. HTTPResponse : HTTPRequest에 대한 응답으로 만들어지는 HTTP Response 정보는 HttpResponse 객체로 만들어집니다. 가장 기초적으로 함수의 리턴 값이 있듯이, 
 HTTP Request에 대한 성공/실패 여부를 알리는 정보가 있으며, 이는 HttpResponse의 statusCode Property에 저장합니다. 가장 대표적인 두 값은 성공적으로 Request가 처리되었음을 의미하는
 HttpStatus.ok이고, 서버가 처리할 수 없다는 의미인 HttpStatus.methodNotAllowed 입니다. HttpResponse 안에는 그외에 유용한 Property들이 있습니다.
 - contentLength Property는 HTTP Response의 크기를 의미합니다.
 - cookies Property는 HTTP Response를 받은 HTTP Client가 저장해야 하는 Cookies의 리스트 정보를 포함합니다.
 - encodingProperty는 JSON이나 UTF-6과 같은 문자열을 저장할 때 사용합니다.
 - headers Property는 response의 헤더를 HttpHeaders 객체로 저장합니다.

*/