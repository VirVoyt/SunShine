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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Level()),
                    );
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
                            alignment: const Alignment(0, 0.6),
                            child: const Text("Tap To Start")),

                       Container(
                            alignment: const Alignment(0,-1),
                         child: Image.asset("assets/лого.png" ),
                            ),
                      ],
                    ),
                  ),
                  ),
            ),
        ],)
    );
  }

}
