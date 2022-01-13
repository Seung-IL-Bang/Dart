// HTTP 서버개발 - Basic HTTP Server & Frameworks

/* 컴퓨터 네트워크 기초 단어 이해
1. Web (World Wide Web) : 인터넷에 연결된 컴퓨터를 통해 사람들이 정보를 공유할 수 있는 전 세계적인 정보 공간을 말한다.
2. IP(Internet Protocol) : 패킷 통신 방식의 인터넷 프로토콜이다. IP는 패킷 전달 여부를 보증하지 않고, 인터넷 계층이다.
3. IP Adress(Internet Protocol address) : 컴퓨터 네트워크에서 장치들이 서로를 인식하고 통신을 하기 위해서 사용하는 특수한 번호이다.
4. TCP(Transmission Control Protocol) : 전송 제어 프로토콜, IP의 핵심 프로토콜 중 하나로, IP와 함께 TCP/IP라는 명칭으로 불린다.
-> TCP는 근거리 통신망이나 인트라넷, 인터넷에 연결된 컴퓨터에서 실행되는 프로그램간에 일련의 옥텟을 안정적으로, 순서대로 에러없이 교환할 수 있게 한다. 
-> TCP는 전송 계층에 위한다. 네트워크의 정보 전달을 통제하는 프로토콜이자 인터넷을 이루는 핵심 프로토콜의 하나이다.
5. Port Number : 운영체제 통신의 종단점이다. 네트워크 서비스나 특정 프로세스를 식별하는 논리 단위이다. 전공 계층이며 TCP와 UDP가 있다.
6. HTTP(HyperText Transfer Protocol) : W3 상에서 정보를 주고받을 수 있는 프로토콜이다. 주로 HTML 문서를 주고받는 데에 쓰인다. 주로 TCP를 사용한다.
 -> HTTP는 클라이언트(프론트엔드)와 서버(백엔드) 사이에 이루어지는 요청/응답 프로토콜이다.
7. HTML(Hyper Text MarkUp Language) : 웹페이지의 구조적 문서를 만들 수 있는 지배적인 마크업 언어다.
8. CSS(Cascading Style Sheets) : 종속형 시트로 마크업 언어가 실제 표시되는 방법을 기술하는 스타일 언어다. 
9. Web Browser : 웹 서버에서 이동하며 쌍방향으로 통신하고 HTML 문서나 파일을 출력하는 그래픽 사용자 인터페이스(GUI) 기반의 응용 소프트웨어다.
10. Web Server : 웹서버는 다음의 두 가지 뜻 가운데 하나이다.
-> 웹 브라우저와 같은 클라이언트로부터 HTTP 요청을 받아들이고, HTML 문서와 같은 웹 페이지를 반환하는 컴퓨터 프로그램이다.
-> 위에 언급한 기능을 제공하는 컴퓨터 프로그램을 실행하는 컴퓨터(하드웨어)
11. DNS(Domain Name System) : 호스트의 도메인 이름을 호스트의 네트워크 주소로 바꾸거나 그 반대의 변환을 수행한다.
-> 특정 컴퓨터의 주소를 찾기 위해, 사람이 이해하기 쉬운 도메인 이름을 숫자로 된 식별 번호(IP Address)로 변환해 준다.
*/

/* HTTP Client & Server Binding
Server는 프로그램 시작후 Listen 상태를 유지함
Client가 Server로 TCP를 통해서 연결을 수행함
Client가 Server로 HTTP Request를 보내고, Server가 이를 수신함
Server는 Client의 HTTP Request 요청을 처리하면서, 다른 Client를 Listen함
Server는 HTTP Request를 처리한 후, HTTP Response를 회신함
Server는 HTTP Resposne를 회신한 Client와의 TCP 연결을 해제함 
*/

/* Dart 언어로 HTTP 기반의 Server 프로그램 제작
dart:io를 사용하여 기초부터 작성하는 방법과, HTTP 기반의 서버 패키지를 활용하는 방법이 있습니다.
일단 dart:io를 사용하는 것은 CLI(command-line interface) 기반 서비스의 개발시 사용하며, 향후 Web Browser나 스마트폰 기반의 Web App을 작성하는 경우는 dart:html을 사용하여야 합니다. 
따라서 HTTP 서버개발 글에서는 dart:io를 주로 활용하여, HTTP Client와 Server를 개발하도록 할 겁니다. 
하지만 Dart 언어에서 HttpRequest class가 dart:html에 포함되어 있기에, dart:html도 함께 사용합니다. 
*/