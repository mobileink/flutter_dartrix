import 'dart:isolate';

// handle data gen for template 'app'
void handleApp(List<String> args, SendPort dartrixPort) async {
  var dataMap = {
    'key1': 'val1',
    'dartrix': {'mergeData': true}
  };
  // ... populate dataMap ...
  dartrixPort.send(dataMap);
}
