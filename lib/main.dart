
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const SunApp());
}

class SunApp extends StatelessWidget {
  const SunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  double tapCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child:  GestureDetector(          //отвечает за нажатие по фону
            onTap: () {
              setState(() {
                tapCount = tapCount + 0.5;
                debugPrint('Green: $tapCount');
              });
            },
            child: Container(               // отвечает за декорацию фона
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/backGround.png"))
              ),
            child: GestureDetector(          //нажатие по главному объекту
              onTap: () {
                setState(() {
                  tapCount = tapCount + 1;
                  debugPrint('Yellow :$tapCount');
                });
              },
              child: Container(              //ндекорация главного объекта
                width: 300,
                height: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/sunMain.png"))
                ),
                child: _score(),
              )
            ),
            ),
          ),
        ),
        Padding(                              //кнопки
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              ElevatedButton(
                child: const Text('Магазин'),
                onPressed: () {
                  setState(() {
                   //переход в магазин
                  });
                },
              ),
              const SizedBox(width:100),
              ElevatedButton(
                child: const Text(
                  'Выбор уровная',
                ),
                onPressed: () {
            //функционал для выбора уровня
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
  //виджет для вывода текста
  Widget _score(){
    return  Align(
        alignment: const Alignment(0.0, -2),
        child:Text(
            'Score: $tapCount',
            textDirection: TextDirection.ltr,   // текст слева направо
            style: const TextStyle(fontSize: 24) // высота шрифта 24
        )
    );
  }
}
