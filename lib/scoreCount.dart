//здесь производиться виджет для вывода и подсчёта результата

part of 'game_demo.dart';

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
              blurRadius: 10.0,
              color: Color.fromARGB(128, 0, 0, 0),
            ),
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 10.0,
              color: Color.fromARGB(128, 0, 0, 0),
            ),
          ],
        ) // высота шрифта 24
    );
  } else if(tapCount >= 1000 && tapCount < 1000000){
    double deatCount = tapCount/1000;
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
  else{
    return Container();
  }
}