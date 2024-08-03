part of 'game_demo.dart';


class _MapPage extends StatefulWidget {
  const _MapPage({super.key});

  @override
  State<_MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<_MapPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Expanded(
            // отвечает за декорацию фона
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/level.jpg"))
              ),
              child: Stack(
                children: [
                  Container(
                    alignment: const Alignment(-0.48, 0.16),
                    child: ElevatedButton(
                      onPressed: () {
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
                        color: Colors.brown
                      ),),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0.45, 0.6),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Level()),
                        );
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(const CircleBorder()),
                        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                        backgroundColor: WidgetStateProperty.all(Colors.orangeAccent), // <-- Button color
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(WidgetState.pressed)) return Colors.greenAccent; // <-- Splash color
                        }),
                      ),
                      child: const Text("2",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                        color: Colors.black
                      ),),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(-0.21, -0.16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Level()),
                        );
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(const CircleBorder()),
                        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                        backgroundColor: WidgetStateProperty.all(Colors.red), // <-- Button color
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(WidgetState.pressed)) return Colors.purple; // <-- Splash color
                        }),
                      ),
                      child: const Text("3",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.brown
                      ),),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(-1, -0.97),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Level()),
                        );
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
              backgroundColor: Colors.yellow,
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StartPage()),
                );
              },
              tooltip: 'Магазин',
              child: const Icon(Icons.shop),
    ),
    );
  }
}
