part of "game_demo.dart";


Widget _pet(){
  if (petBuy1 == true && levelBackSave == 1) {//цветок
    petPower1 = 20;
    return SizedBox(
      width: 100,
      height: 100,
      child: tapFlag ? level[1] :level[2]
    );
  } else if (petBuy12 == true && levelBackSave == 2){//краб
    petPower12 = 200;
    return SizedBox(
      width: 150,
      height: 150,
      child: tapFlag ? level[1] :level[2]
    );
  } else if (petBuy13 && levelBackSave == 3){             //олень
    petPower13 = 2000;
    return SizedBox(
      width: 150,
      height: 150,
      child: tapFlag ? level[1] :level[2]
    );
  } else {
    return SizedBox(
      width: 100,
      height: 100,
      child: forAll[2]);
  }
}

Widget _pet2() {
  //бабочка
  if (petBuy2 == true && levelBackSave == 1) {
    petPower2 = 50;
    return SizedBox(
      width: 100,
      height: 100,
      child: tapFlag ? level[5] : level[6]
    );
  } else if (petBuy22 == true && levelBackSave == 2) { //акула
    petPower22 = 500;
    return SizedBox(
      width: 100,
      height: 100,
      child: tapFlag ? level[3] : level[4]
    );
  } else if (petBuy23 == true && levelBackSave == 3) {
    petPower23 = 5000;
    return SizedBox( //ястреб
      width: 150,
      height: 150,
      child:  tapFlag ? level[3] : level[4]
    );
  } else {
    return SizedBox(
      width: 100,
      height: 100,
      child:  forAll[2]
    );
  }
}

Widget _pet3() {
  //воробей
  if (petBuy3 == true && levelBackSave == 1) {
    petPower3 = 70;
    return SizedBox(
      width: 100,
      height: 100,
      child:  tapFlag ? level[7] : level[8],
    );
  } else if (petBuy32 == true && levelBackSave == 2) {//облако
    petPower32 = 700;
    return SizedBox(
      width: 150,
      height: 150,
      child:  tapFlag ? level[5] : level[6]
    );
  } else if (petBuy33 == true && levelBackSave == 3) {
    petPower33 = 7000;
    return SizedBox(//медведь
      width: 100,
      height: 100,
      child: tapFlag ? level[5] : level[6]
    );
  } else {
    return SizedBox(
      width: 100,
      height: 100,
      child: forAll[2]
    );
  }
}

Widget _pet4(){
  if (petBuy4 == true && levelBackSave == 1) {//жук
    petPower4 = 90;
    return SizedBox(
      width: 100,
      height: 100,
      child: tapFlag ? level[3] : level[4],
    );
  } else if(petBuy42 == true && levelBackSave == 2){//чайка
    petPower42 = 900;
    return SizedBox(
      width: 100,
      height: 100,
      child: tapFlag ? level[7] : level[8]
    );
  } else if (petBuy43 == true && levelBackSave == 3){//орел
    petPower43 = 9000;
    return SizedBox(
      width: 150,
      height: 150,
      child: tapFlag ? level[7] : level[8]

    );
  } else {
    return SizedBox(
      width: 100,
      height: 100,
      child: forAll[2],
    );
  }
}

void _levelBack(BuildContext context){
    if(levelBackSave == 1){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Level()),);
  } else if (levelBackSave == 2){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Level()),);
  } else{
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Level()),);
  }
}

_scoreCount(){
  int out;
   petPowerSum =  petPower1 + petPower2 + petPower3 + petPower4 + petPower12 + petPower22 + petPower32+ petPower42 + petPower13 + petPower23+ petPower33 + petPower43;
  if(levelBackSave == 1){
    tapCount = tapCount + 1 * multiplier + petPowerSum;
    out = 1 * multiplier + petPowerSum;
  } else if(levelBackSave == 2){
    tapCount = tapCount + 1 * multiplier * 100 + petPowerSum;
    out = 1 * multiplier * 100 + petPowerSum;
  } else{
    tapCount = tapCount + 1 * multiplier * 1000 + petPowerSum;
    out = 1 * multiplier * 1000 + petPowerSum;
  }
  if(out < 1000){
    text = out.toString();
  } else if(out <= 1000000 && out >=1000){
    text = "${(out/1000).toStringAsFixed(2)}K";
  } else{
    text = "${(out/1000000).toStringAsFixed(2)}M";
  }
}

_shopChange(){
  if(levelBackSave == 1){
   users = ["Upgrade", "Александр", "Василий", "Святослав", "Мыкола", "Уровень 2"];
   price = [50, 1000, 5000, 15000, 50000, 100000];
   price2 = ['50', '1K', '5K', '15K', '50K', '100K'];
   description = ["Добавляет +1 нажатие за каждую покупку",
     petBuy1 ? "Добавляет +20 нажатия за покупку. Над колдунами Саша больше не шутит": "?",
     petBuy2 ? "Добавляет +50 нажатия за покупку. Просто Василий. Этим все сказано": "?",
     petBuy3 ?"Добавляет +70 нажатия за покупку. Свято...slave???": "?",
     petBuy4 ? "Добавляет +90 нажатия за покупку. \nБосс этой качалки": "?",
     "Купите новый уровень! Поездка во Вьетнам будет незабываемой)))"];
   colorCodes = [Colors.deepOrange, Colors.brown, Colors.grey, Colors.blue, Colors.lightGreen, Colors.yellow];
   picture = [const Icon(Icons.arrow_upward, size: 50,),
     petBuy1 ? level[1]: const Icon(Icons.question_mark, size: 50),
     petBuy2 ? level[5]: const Icon(Icons.question_mark, size: 50),
     petBuy3 ? level[7]: const Icon(Icons.question_mark, size: 50),
     petBuy4 ? level[3]: const Icon(Icons.question_mark, size: 50),
     const Icon(Icons.warehouse, size: 50,)];
  }else if(levelBackSave == 2){
   users = ["Upgrade", "Tuân", "Hùng", " Hai", "Son", "Level 3"];
    price = [10000, 200000, 500000, 750000, 1500000, 2000000];
    price2 = ["10K", "200K", "500К", "750К", "1.5М", "2М"];
    description = ["Добавляет +10 нажатий за каждую покупку",
      petBuy12 ?"Добавляет +200 нажатий. Так выглядят Вьетнамцы?": "?",
      petBuy22 ?"Добавляет +500 нажатий. \nИ отнимает пару рук...": "?",
      petBuy32 ?"Добавляет +700 нажатий. \nОблако? Серьезно?": "?",
      petBuy42 ?"Добавляет +900 нажатий. Владелец всех автомоек Вьетнама": "?",
      "В последний путь...\nAmerica yaaaa!!!"];
    colorCodes = [Colors.deepOrange, Colors.brown, Colors.grey, Colors.blue, Colors.lightGreen, Colors.white];
    picture = [const Icon(Icons.arrow_upward, size: 50,),
      petBuy12 ? level[1]: const Icon(Icons.question_mark, size: 50),
      petBuy22 ? level[3]: const Icon(Icons.question_mark, size: 50),
      petBuy32 ? level[5]: const Icon(Icons.question_mark, size: 50),
      petBuy42 ? level[7]: const Icon(Icons.question_mark, size: 50),
      const Icon(Icons.cloud, size: 50,)];
  } else {
    users = ["Upgrade", "Tom", "Bob", "Bro", "Mike"];
    price = [100000, 1500000, 5000000, 15000000, 50000000];
    price2 = ["100K", "1.5M", "5М", "15М", '50M'];
    description = ["Добавляет +100 нажатий за каждую покупку",
      petBuy13 ? "Добавляет +2000 нажатий. \nЭто Том, и он олень": "?",
      petBuy23 ?"Добавляет +5000 нажатий. \nРезкий и дерзкий": "?",
      petBuy33 ?"Добавляет +7000 нажатий. \nВ чем сила, Американец?": "?",
      petBuy43 ?"Добавляет +9000 нажатий. \nКьяяяя!": "?"];
    colorCodes = [Colors.deepOrange, Colors.brown, Colors.grey, Colors.blue, Colors.lightGreen];
    picture = [ const Icon(Icons.arrow_upward, size: 50,),
      petBuy13 ? level[1]: const Icon(Icons.question_mark, size: 50),
      petBuy23 ? level[3]: const Icon(Icons.question_mark, size: 50),
      petBuy33 ? level[5]: const Icon(Icons.question_mark, size: 50),
      petBuy43 ? level[7]: const Icon(Icons.question_mark, size: 50),
    ];
  }
}

_buyPet(context, int index) {
  if (tapCount >= price[index]) {
    switch (index) {
      case 0:
        if (levelBackSave == 1) {
          tapCount = tapCount - price[index];
          multiplier = multiplier + 1;
        } else if (levelBackSave == 2) {
          tapCount = tapCount - price[index];
          multiplier = multiplier + 10;
        } else if(levelBackSave == 3){
          tapCount = tapCount - price[index];
          multiplier = multiplier + 100;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Center(child: Text('Уже куплено'),)
            ),
          );
        }
      case 1:
        if (petBuy1 == false && levelBackSave == 1) {
          petBuy1 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy12 == false && levelBackSave == 2) {
          petBuy12 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy13 == false && levelBackSave == 3) {
          petBuy13 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Center(child: Text('Уже куплено'),)
            ),
          );
        }
      case 2:
        if (petBuy2 == false && levelBackSave == 1) {
          petBuy2 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy22 == false && levelBackSave == 2) {
          petBuy22 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy23 == false && levelBackSave == 3) {
          petBuy23 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Center(child: Text('Уже куплено'),)
            ),
          );
        }
      case 3:
        if (petBuy3 == false && levelBackSave == 1) {
          petBuy3 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy32 == false && levelBackSave == 2) {
          petBuy32 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy33 == false && levelBackSave == 3) {
          petBuy33 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Center(child: Text('Уже куплено'),)
            ),
          );
        }
      case 4:
        if (petBuy4 == false && levelBackSave == 1) {
          petBuy4 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy42 == false && levelBackSave == 2) {
          petBuy42 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else if (petBuy43 == false && levelBackSave == 3) {
          petBuy43 = true;
          tapCount = tapCount - price[index];
          _levelBack(context);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Center(child: Text('Уже куплено'),)
            ),
          );
        }
      case 5:
        if (levelBuy2 == false && levelBackSave == 1) {
          tapCount = tapCount - price[index];
          levelBuy2 = true;
          levelBackSave = 2;
          load.loadLevel();
          _levelBack(context);
        } else if (levelBuy3 == false && levelBackSave == 2) {
          tapCount = tapCount - price[index];
          levelBuy3 = true;
          levelBackSave = 3;
          load.loadLevel();
          _levelBack(context);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Center(child: Text('Уже куплено'),)
            ),
          );
        }
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Center(child: Text('Недостаточно очков'),)
      ),
    );
  }
}

class Load {
  loadImage() {
    forAll =  [
      Image.asset("assets/sunv1.png"),
      Image.asset("assets/sunv1h.png"),
      Image.asset("assets/petFalse.png"),
      const AssetImage("assets/12.png"),
      const AssetImage("assets/level.jpg"),
    ];
  }

  loadLevel() {
    if (levelBackSave == 1) {
      x1=-0.70; y1= 0.85;
      x2 =0.75; y2 = -0.75;
      x3= -0.75 ; y3=-0.8;
      x4 = 0.75; y4 = 0.8;
      level = [];
      level =  [
        const AssetImage("assets/level1v3.png"),
        Image.asset("assets/pet.png"),
        Image.asset("assets/petHit.png"),
        Image.asset("assets/жук.png"),
        Image.asset("assets/жукHit.png"),
        Image.asset("assets/бабочка.png"),
        Image.asset("assets/бабочкаHit.png"),
        Image.asset("assets/pet3level1.png"),
        Image.asset("assets/pet3level1h.png"),
      ];
    } else if (levelBackSave == 2) {
      x1= -0.6; y1= 0.9;
      x2 = -1; y2 =  0.05;
      x3= 0.65 ; y3= -0.8;
      x4 = 0.75; y4 = 0.6;
      level = [];
      level =  [
        const AssetImage("assets/level2.png"),
        Image.asset( "assets/pet1level2.png"),
        Image.asset("assets/pet1level2h.png"),
        Image.asset("assets/pet2level2.png"),
        Image.asset("assets/pet2level2h.png"),
        Image.asset("assets/облако.png"),
        Image.asset("assets/облакоHit.png"),
        Image.asset("assets/pet3level2.png"),
        Image.asset("assets/pet3level2h.png")
      ];
    } else {
      x1= 0.75; y1= 0.8;
      x2 = -0.75; y2 = -0.75;
      x3= -0.65 ; y3= 0.9;
      x4 = 0.75; y4 = -0.8;
      level = [];
      level =  [
        const AssetImage("assets/level3.jpg"),
        Image.asset("assets/pet1level3.png"),
        Image.asset("assets/pet1level3h.png"),
        Image.asset("assets/pet2level3.png"),
        Image.asset("assets/pet2level3h.png"),
        Image.asset("assets/pet3level3.png"),
        Image.asset("assets/pet3level3h.png"),
        Image.asset("assets/pet4level3.png"),
        Image.asset("assets/pet4level3h.png"),
      ];
    }
  }
}



click(){
  player.setAsset('assets/click.wav');
  player.setVolume(volume);
  player.play();
}

tap(){
  player.setAsset('assets/hit.wav');
  player.setVolume(volume);
  player.play();
}
