import 'package:contat_app/controller/socket_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SocketController socket;

  String buttonLabel = "Sincronizar";

  @override
  void initState() {
    socket = SocketController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: deviceInfo.size.height,
      width: deviceInfo.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: ElevatedButton(
              onPressed: () => socket.startChannel(),
              child: Text(buttonLabel),
            ),
          )
        ],
      ),
    );
  }
}
