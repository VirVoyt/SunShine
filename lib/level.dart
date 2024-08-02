//здесь происходит компоновка первого уровня

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


  //эти параметры будут устанавливать путем покупки чего-либо из магазина


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
}