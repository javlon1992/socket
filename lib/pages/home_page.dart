import 'package:flutter/material.dart';
import 'package:socket/services/socket.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var res = "No Data";

  _initSocketService(){
    SocketService.connectSocketChannel();

    SocketService.channel.stream.listen((data) {
      setState(() {
        res = data.toString();
      });
    },
    onError: (error) {
      setState(() {
        res = error.toString();
      });
    }
    );
  }

  @override
  void initState() {
    _initSocketService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: EdgeInsets.all(10),
       child: Center(
        child: Text(res),
       ),
     ),
    );
  }
}
