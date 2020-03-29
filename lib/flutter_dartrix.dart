import 'dart:isolate';

import 'src/app.dart';

SendPort dartrixPort;

void printUsage() {
  print("\n\t\tDartrix Template package: hello_templates\n");
  print("Available templates:\n");
  print("\thello");
  print("\tgoodbye\n");
  print("Pass -h to see template doc, e.g. -t hello -h\n");
}

void main(List<String> args, SendPort sport) {
  // print("Plugin entrypoint: hello_dartrix.dart:main($args)");
  if (args.contains('-v') || args.contains('--verbose')) {
    print("Plugin entrypoint: hello_dartrix.dart:main($args)");
  }

  dartrixPort = sport;

  // First arg is the template name.
  switch (args[0]) {
    case "app":
      handleApp(args, sport);
      break;
    default:
      dartrixPort.send({});
  }
}
