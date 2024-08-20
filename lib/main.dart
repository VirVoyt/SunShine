//главный файл
import 'package:flutter/material.dart';
import 'game_demo.dart';
import 'package:flutter/services.dart';

Load load = Load();
Data data = Data();
main() async{
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  await data.restoreScore();
  await load.loadImage();
  await load.loadLevel();


  runApp(const StartPage());
}


