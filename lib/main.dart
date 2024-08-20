//главный файл
import 'package:flutter/material.dart';
import 'game_demo.dart';
import 'package:flutter/services.dart';


Load load = Load();

main() async{

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

 Data data = Data();
  await data.restoreScore();
  await load.loadImage();
  await load.loadLevel();

  runApp(const StartPage());
}


