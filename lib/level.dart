part of 'game_demo.dart';

class Level extends StatelessWidget {
  const Level({super.key});

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
  double opacity = 0.5;

  //эти параметры будут устанавливать путем покупки чего-либо из магазина
  bool petBuy1 = true;
  int petPower1 = 0;
  bool petBuy2 = true;
  int petPower2 = 0;
  bool petBuy3 = true;
  int petPower3 = 0;
  bool petBuy4 = true;
  int petPower4 = 0;
  int multiplier = 1;
  int power = 2;

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
                tapCount = tapCount + 1 * multiplier * power + petPower1 + petPower2 + petPower3 + petPower4;
              });
            },
            onPointerUp: (P){
              setState(() {
                tapFlag = true;
              });
            } ,// отвечает за декорацию фона
            child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/backGround.png"))
                ),
                child:   Container(              //ндекорация главного объекта

                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                        image: DecorationImage(image: AssetImage(tapFlag ? "assets/sunMain.png" : "assets/sunLight.png" ))
                    ),
                    child: Stack(
                      children: [
                        Container(alignment: const Alignment(-0.75, 0.8), child: _pet(),),

                        Container(alignment: const Alignment(0.75, -0.75), child: _pet2(),),

                        Container(alignment: const Alignment(-0.75, -0.8), child: _pet3(),),

                        Container(alignment: const Alignment(0.75, 0.7), child: _pet4(),),

                        Container( alignment: const Alignment(0.0, -0.85),child: _score()),
                      ],
                    )
                )
            ),
          ),
        ),
        Container(
          height: 40,
          decoration: const BoxDecoration(
              image:  DecorationImage
                (fit: BoxFit.fill,
                  image: AssetImage("assets/12.png"))),
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
    if(tapCount < 1000) {
      return Text(
              'Score: $tapCount',
              textDirection: TextDirection.ltr, // текст слева направо
              style: const TextStyle(fontSize: 24,
                color: Colors.black,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                ],
              ) // высота шрифта 24
      );
    } else if(tapCount >= 1000 && tapCount < 1000000){
      double deatCount = tapCount/1000;
      deatCount.toStringAsFixed(3);
      String tt =  (deatCount).toStringAsFixed(2);
      return  Text(
              'Score: $tt''K',
              textDirection: TextDirection.ltr, // текст слева направо
              style: const TextStyle(fontSize: 24,
                color: Colors.black,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                ],
              ) // высота шрифта 24
      );
    } else if(tapCount >= 1000000){
      double deatCount = tapCount/1000000;
      String tt =  (deatCount).toStringAsFixed(2);
      return Text(
              'Score: $tt''M',
              textDirection: TextDirection.ltr, // текст слева направо
              style: const TextStyle(fontSize: 24,
                color: Colors.black,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                ],
              ) // высота шрифта 24
      );
    }
    else{ return Container();}
  }
// виджеты добавления питомцев
  Widget _pet(){
    if (petBuy1 == true){
      petPower1 = 2;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(tapFlag ? "assets/pet.png" : "assets/petHit.png" ))
          ),
          child: Container(alignment: const Alignment(0, -1.5),
              child:
              _textCountForPet1()
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _pet2(){
    if (petBuy2 == true){
      petPower2 = 5;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration:  BoxDecoration(
              image: DecorationImage(image: AssetImage(tapFlag ?  "assets/бабочка.png" : "assets/бабочкаHit.png"))
          ),
          child: Container(
            alignment: const Alignment(0, -1.5),
            child: _textCountForPet2(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _pet3(){
    if (petBuy2 == true){
      petPower3 = 7;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(tapFlag ? "assets/облако.png" : "assets/облакоHit.png"))
          ),
          child: Container(alignment: const Alignment(0, -1.3),
          child: _textCountForPet3()),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _pet4(){
    if (petBuy2 == true){
      petPower4 = 9;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(tapFlag ? "assets/жук.png" : "assets/жукHit.png" ))
          ),
          child: Container(alignment: const Alignment(0, -1.3),
          child: _textCountForPet4()),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _textCountForPet1(){
    if(tapFlag == false){
      return  Text("+$petPower1");
    }else{
      return Container();
    }
  }

  Widget _textCountForPet2(){
    if(tapFlag == false){
      return  Text("+$petPower2");
    }else{
      return Container();
    }
  }

  Widget _textCountForPet3(){
    if(tapFlag == false){
      return  Text("+$petPower3");
    }else{
      return Container();
    }
  }

  Widget _textCountForPet4(){
    if(tapFlag == false){
      return Text("+$petPower4");
    }else{
      return Container();
    }
  }

}