
import 'package:flutter/cupertino.dart';
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
  bool tapFlag = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child:  Listener(
            //отвечает за нажатие по фону
            onPointerDown: (b){
              setState(() {
                tapFlag = false;
                tapCount = tapCount + 1;
              });
            },
            onPointerUp: (P){
              setState(() {
                tapFlag = true;
              });
            } ,
            child: Container(               // отвечает за декорацию фона
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/backGround.png"))
              ),
            child:   Container(              //ндекорация главного объекта
                width: 300,
                height: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/sunMain.png" ))
                ),
                child: Stack(
                  children: [
                    Container(child: _score()),
                    Container(child: _hitBox())
                    ],
                )
              )
            ),
            ),
          ),
        Container(
          height: 52.6,
          width: 1000,
          decoration: const BoxDecoration(
          image:  DecorationImage( image: AssetImage("assets/1.jpg"))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              Align(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red
                    ),
                child: const Text('Магазин',),
                onPressed: () {

                  setState(() {
                   //переход в магазин
                  });
                },
              )),
             Align(
               child:  ElevatedButton(
                 style:(ElevatedButton.styleFrom(
                   foregroundColor: Colors.white,
                   backgroundColor: Colors.orange
                 )),
                child: const Text(
                  'Выбор уровная',
                ),
                onPressed: () {
            //функционал для выбора уровня
                },
              ),
             )],
          ),
        )],
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

 Widget _hitBox(){ //виджет для эффекта попадания
    if (tapFlag == false){
      debugPrint("$tapFlag");
    return Container(
      width: 300,
      height: 300,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/sunLight.png" ))
      ),
    );
    } else{
      return Container();
    }
  }
}

