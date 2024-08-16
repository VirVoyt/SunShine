//главный файл

import 'package:flutter/material.dart';
import 'game_demo.dart';
import 'package:flutter/services.dart';

Load load = Load();

main() async{

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

   load.loadImage();
   load.loadLevel();

  runApp(const StartPage());
}


