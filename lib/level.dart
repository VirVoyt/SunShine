part of 'game_demo.dart';

Load load = Load();

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Expanded(
            // отвечает за декорацию фона
            child: GestureDetector(
              onTap:(){
                setState(() {
                  _levelBack(context);
                  stop = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/main.jpg"))
                ),
                child:
                Stack(
                  children: [
                    Container(
                        alignment: const Alignment(0, 0.7),
                        child:AnimatedOpacity(
                            opacity: opacity == 1 ? 0: 1,
                            duration: const Duration(seconds: 1),
                            child:SizedBox(
                              width: 200,
                              height: 100,
                              child: Image.asset("assets/taptoplay.png" ),
                            ))),
                    Align(
                      alignment: const Alignment(0,-1),
                      child: SizedBox(
                        width: 300,
                        height: 200,
                        child: Image.asset("assets/logo.png" ),
                      ),),
                    Container(child: changeOpacity(),)
                  ],
                ),
              ),
            ),
          ),
        ],)
    );
  }

  changeOpacity()  {
    if(stop == false){
     Future.delayed( const Duration(seconds: 1), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
       changeOpacity();
      });
    });
  }}
}

//здесь происходит компоновка первого уровня
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

  double opacityLevel = 1.0;
  double x = 0.0;
  double y = 0.0;

  void _incrementDown(PointerEvent details) {
    _updateLocation(details);
    setState(() {
      tapFlag = false;
      opacityLevel = 1.0;
      _scoreCount();
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    _shopChange();
    return Column(
      children: <Widget>[
        Expanded(
          child: Listener(
            //отвечает за нажатие по фону
            onPointerDown:_incrementDown,
            onPointerUp: (PointerEvent details){
              setState(() {
                tapFlag = true;
                opacityLevel = 0.0;
              });
            },
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: level[0]
                  )
              ),// отвечает за декорацию фона

                child: Stack(
                  children: [Container(              //ндекорация главного объекта
                    alignment: Alignment.center,
                  child: tapFlag ? forAll[0] : forAll[1]),

                        Container(alignment:  Alignment(x1 ,y1), child: _pet(),),

                        Container(alignment:  Alignment(x2, y2), child: _pet2(),),

                        Container(alignment:  Alignment(x3, y3), child: _pet3(),),

                        Container(alignment:  Alignment(x4, y4), child: _pet4(),),

                        Container(alignment: const Alignment(0.0, -0.85),child: _score()),
                      Align(
                        alignment: FractionalOffset(x/MediaQuery.sizeOf(context).width ,
                            y/(MediaQuery.sizeOf(context).height-45)),

                        child:Opacity(
                            opacity: opacityLevel,
                            child: Text("+$text",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40
                              ),
                            )
                        )
                    ),
                  ],
                )
          ),
          ),
        ),
        Container(
          height: 45,
          decoration: BoxDecoration(
              image:  DecorationImage
                (fit: BoxFit.fill,
                  image: forAll[3])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrange[900]
                    ),
                    child: const Text('Главное Меню',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                    onPressed: () {
                      setState(() {
                        stop = false;
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
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const ShopPage()),
                      );
                    });
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
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  _MapPage()),
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
//магазин
class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State <ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar (backgroundColor: Colors.lightGreenAccent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => {
                setState(() {
            _levelBack(context);
                })
              }
          ),
          title: Text("Shop \nБаланс: $tapCount"),),
        body: Container(
            decoration: const BoxDecoration(
                color: Colors.black
            ),
            child:
            ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index){
                  return  Container(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child:
                      SizedBox(
                          height: 95,
                          child: Material(
                              color: colorCodes[index],
                              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                              child: Stack( children: [
                                Container(
                                  alignment: const Alignment(0.9, 0),
                                  child:ElevatedButton(
                                    onPressed: () => {
                                      setState(() {
                                    _buyPet(context, index);
                                      })
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(Colors.green),
                                    ),
                                    child: const Icon(Icons.add , color: Colors.black,),
                                  ),
                                ),
                                Row(
                                  children: [
                                    //картинка + подпись
                                    SizedBox(
                                        width: 87,
                                        child: Column(children: [
                                          Container(
                                            width: 70,height: 70,
                                            padding: const EdgeInsets.symmetric(vertical: 5),
                                            child: picture[index],
                                          ),
                                          Center(child: Text(users[index], style: const TextStyle(fontSize: 14)),),
                                        ],
                                        )),
                                    //описание и прайс
                                    Column(children: [
                                      Container(
                                        alignment: const Alignment(-1, -1),
                                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal:10 ),
                                        height: 30,
                                        width: MediaQuery.of(context).size.width-165,
                                        child: const Text("Описание", style: const TextStyle(fontSize: 18)),),
                                      Container(
                                        alignment: const Alignment(-1, 0),
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                        height: 34,
                                        width: MediaQuery.of(context).size.width-165,
                                        child: Text(description[index], style: const TextStyle(fontSize: 11)),),

                                      Container(
                                          alignment: const Alignment(-1, 1),
                                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          height: 28,
                                          width: MediaQuery.of(context).size.width-165,
                                          child: Text("Цена: ${price2[index]}", style: const TextStyle(fontSize: 14))),
                                    ],
                                    ),
                                  ],
                                ),
                              ])
                          )
                      )
                  );
                }
            )
  ));
  }
}



class _MapPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          // отвечает за декорацию фона
          child: Container(
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: forAll[4])
              ),
              child: Stack(
                children: [
                  Container(
                    alignment: const Alignment(-0.48, 0.16),
                    child: ElevatedButton(
                      onPressed: () {
                        levelBackSave = 1;
                        load.loadLevel();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Level()),
                        );
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(const CircleBorder()),
                        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                        backgroundColor: WidgetStateProperty.all(Colors.yellowAccent), // <-- Button color
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(WidgetState.pressed)) return Colors.brown; // <-- Splash color
                        }),
                      ),
                      child: const Text("1",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black
                        ),),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0.45, 0.6),
                    child: ElevatedButton(
                      onPressed: () {
                        if (levelBuy2 == true){
                          levelBackSave = 2;
                          load.loadLevel();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Level()),
                          );} else{
                          levelBackSave = 1;
                          load.loadLevel();
                          _shopChange();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ShopPage()),
                          );
                        }
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(const CircleBorder()),
                        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                        backgroundColor: WidgetStateProperty.all(Colors.orangeAccent), // <-- Button color
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(WidgetState.pressed)) return Colors.greenAccent; // <-- Splash color
                        }),
                      ),
                      child: levelBuy2 ? const Text("2",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black
                        ),): const Icon(Icons.lock, color: Colors.black,),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(-0.21, -0.16),
                    child: ElevatedButton(
                      onPressed: () {
                        if(levelBuy3 == true){
                          levelBackSave = 3;
                          load.loadLevel();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Level()),
                          );} else{
                          levelBackSave = 2;
                          load.loadLevel();
                          _shopChange();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ShopPage()),
                          );
                        }
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(const CircleBorder()),
                        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                        backgroundColor: WidgetStateProperty.all(Colors.red), // <-- Button color
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(WidgetState.pressed)) return Colors.purple; // <-- Splash color
                        }),
                      ),
                      child: levelBuy3 ? const Text("3",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black
                        ),) : const Icon(Icons.lock, color: Colors.black,),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(-1, -0.97),
                    child: ElevatedButton(
                      onPressed: () {
                        _levelBack(context);
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(const CircleBorder()),
                        backgroundColor: WidgetStateProperty.all(Colors.transparent),
                        padding: WidgetStateProperty.all(const EdgeInsets.all(15)), // <-- Button color
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(WidgetState.pressed)) return Colors.grey; // <-- Splash color
                        }),
                      ),
                      child: const Icon(Icons.arrow_back,
                        color: Colors.white,),
                    ),
                  ),
                ],
              )
          ),
        ),
      ],),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const ShopPage()),
          );
        },
        tooltip: 'Магазин',
        child: const Icon(Icons.shop, color: Colors.black),
      ),
    );
  }
}