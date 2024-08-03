//здесь происходит компоновка первого уровня

part of 'game_demo.dart';

class Level extends StatelessWidget {
  const Level({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LevelPage(),
      ),
    );
  }
}

class LevelPage extends StatefulWidget {
  const LevelPage({super.key});

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {


  //эти параметры будут устанавливать путем покупки чего-либо из магазина


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child:
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/level1.jpg"))
            ),
          child: Listener(
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

                child:   Container(              //ндекорация главного объекта
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                        image: DecorationImage(image: AssetImage(tapFlag ? "assets/sunv1.png" : "assets/sunv12.png" ))
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
          height: 45,
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
                        backgroundColor: Colors.deepOrange[900]
                    ),
                    child: const Text('Главное Меню',),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainPage()),
                        );
                      });
                    },
                  )),
              Align(
                child:  ElevatedButton(
                  style:(ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.amber[600]
                  )),
                  child: const Text(
                    'Магазин',
                  ),
                  onPressed: () {

                  },
                ),
              ),
              Align(
                alignment: const Alignment(0.5, 0),
                child:  ElevatedButton(
                  style:(ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink[900]
                  )),
                  child: const Text(
                    'Выбор Уровня',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const _MapPage()),
                    );
                  },
                ),
              )
            ],
          ),
        )],
    );
  }
}