import 'dart:async';

void main() {
  Timer(Duration(seconds: 3), () => print('timer')); // async 함수
  print('end of main');
}
// async에서 배운 것처럼, main()에서 할일을 다하고 기다리다가, 비동기 동작들까지 모두 마친후에 프로그램을 종료하는 것을 확인할 수 있습니다.