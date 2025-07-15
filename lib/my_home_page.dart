import 'package:flutter/material.dart';
import 'package:guitara_task/call_screen.dart';
import 'package:guitara_task/main.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Go Stream"),
      ),
      body: Center(
          child: ElevatedButton(
            child: const Text('Create Call'),
            onPressed: () async {
              try {
                var call = StreamVideo.instance.makeCall(
                  callType: StreamCallType(),
                  id: '9YyK7GISk1WJ',
                );

                await call.getOrCreate();

                // Created ahead
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallScreen(call: call),
                  ),
                );
              } catch (e) {
                debugPrint('Error joining or creating call: $e');
                debugPrint(e.toString());
              }
            },
          )
      ),
    );
  }
}