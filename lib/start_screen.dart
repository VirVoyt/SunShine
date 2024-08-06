part of 'game_demo.dart';

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
                    if(levelBackSave == 1){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Level()),);
                    } else if (levelBackSave == 2){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Level2()),);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Level3()),);
                    }
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

  changeOpacity() {
    Future.delayed( const Duration(seconds: 1), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        changeOpacity();
      });
    });
  }
}
