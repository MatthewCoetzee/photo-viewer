import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:photoviewer/home.dart';
import 'package:photoviewer/injection/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Loads the API key the from the .ENV file
  await dotenv.load(fileName: ".env");
  //Initiates dependency injection
  initDI();
  runApp(const App());
}

//App configuration
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Viewer',
      home: Home(),
    );
  }
}
