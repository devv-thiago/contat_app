import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class SocketController {
  startChannel() async {
    final wsUrl = Uri.parse("ws://echo.websocket.org");
    final channel = WebSocketChannel.connect(wsUrl);

    await channel.ready;

    channel.stream.listen((message) {
      channel.sink.add('received!');
      channel.sink.close(status.goingAway);
    }).onDone(() {
      debugPrint("Sucess");
    });
  }
}
