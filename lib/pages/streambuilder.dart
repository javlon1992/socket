import 'package:flutter/material.dart';
import 'package:socket/services/socket.dart';

class Stream extends StatefulWidget {
  const Stream({Key? key}) : super(key: key);

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {

  @override
  void initState() {
    SocketService.connectSocketChannel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: SocketService.channel.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(snapshot.hasData ? "${snapshot.data}": "No Data"),
            ),
          );
        },
      ),
    );
  }
}
