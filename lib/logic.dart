part of "game_demo.dart";

_levelBack(BuildContext context){
  if(levelBackSave == 1){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Level()),);
  } else if (levelBackSave == 2){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Level2()),);
  } else{
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Level3()),);
  }
}

_scoreCount(){
  if(levelBackSave == 1){
  tapCount = tapCount + 1 * multiplier + petPower1 + petPower2 + petPower3 + petPower4 + petPower12 + petPower22 + petPower32+ petPower42 + petPower13 + petPower23+ petPower33 + petPower43 ;}
  else if(levelBackSave == 2){
    tapCount = tapCount + 1 * multiplier * 100 + petPower1 + petPower2 + petPower3 + petPower4 + petPower12 + petPower22 + petPower32+ petPower42 + petPower13 + petPower23+ petPower33 + petPower43;
  } else{
    tapCount = tapCount + 1 * multiplier * 1000 + petPower1 + petPower2 + petPower3 + petPower4 + petPower12 + petPower22 + petPower32+ petPower42 + petPower13 + petPower23+ petPower33 + petPower43;
  }
}

_shopChange(){
  if(levelBackSave == 1){
   users = ["Upgrade", "Александр", "Василий", "Святослав", "Мыкола", "Уровень 2"];
   price = [50, 1000, 5000, 15000, 50000, 100000];
   price2 = ['50', '1K', '5K', '15K', '50K', '100K'];
   description = ["Добавляет +1 нажатие за каждую покупку",
     "Добавляет +20 нажатия за покупку. Над колдунами Саша больше не шутит",
     "Добавляет +50 нажатия за покупку. Просто Василий. Этим все сказано",
     "Добавляет +70 нажатия за покупку. Свято...slave???",
     "Добавляет +90 нажатия за покупку. \nБосс этой качалки",
     "Купите новый уровень! Поездка во Вьетнам будет незабываемой)))"];
   colorCodes = [Colors.deepOrange, Colors.brown, Colors.grey, Colors.blue, Colors.lightGreen, Colors.yellow];
   picture = [const Icon(Icons.arrow_upward, size: 50,),
      Image.asset("assets/pet.png", width: 50,height: 50),
      Image.asset("assets/бабочка.png", width: 50,height: 50),
      Image.asset("assets/pet3level1.png", width: 50,height: 50),
      Image.asset("assets/жук.png", width: 50,height: 50),
     const Icon(Icons.warehouse, size: 50,)];
  }else if(levelBackSave == 2){
   users = ["Upgrade", "Tuân", "Hùng", " Hai", "Son", "Level 3"];
    price = [10000, 200000, 500000, 750000, 1500000, 2000000];
    price2 = ["10K", "200K", "500К", "750К", "1.5М", "2М"];
    description = ["Добавляет +10 нажатий за каждую покупку",
      "Добавляет +200 нажатий. Так выглядят Вьетнамцы?",
      "Добавляет +500 нажатий. \nИ отнимает пару рук...",
      "Добавляет +700 нажатий. \nОблако? Серьезно?",
      "Добавляет +900 нажатий. Владелец всех автомоек Вьетнама",
      "В последний путь...\nAmerica yaaaa!!!"];
    colorCodes = [Colors.deepOrange, Colors.brown, Colors.grey, Colors.blue, Colors.lightGreen, Colors.brown];
    picture = [const Icon(Icons.arrow_upward, size: 50,),
        Image.asset("assets/pet1Level2.png", width: 50,height: 50),
      Image.asset("assets/pet2level2.png", width: 50,height: 50),
      Image.asset("assets/облако.png", width: 50,height: 50),
      Image.asset("assets/pet3level2.png", width: 50,height: 50),
      const Icon(Icons.cloud, size: 50,)];
  } else {
    users = ["Upgrade", "Tom", "Bob", "Bro", "Mike"];
    price = [100000, 1500000, 5000000, 15000000, 50000000];
    price2 = ["100K", "1.5M", "5М", "15М", '50M'];
    description = ["Добавляет +100 нажатий за каждую покупку",
      "Добавляет +2000 нажатий. \nЭто Том, и он олень",
      "Добавляет +5000 нажатий. \nРезкий и дерзкий",
      "Добавляет +7000 нажатий. \nВ чем сила, Американец?",
      "Добавляет +9000 нажатий. \nСимвол Америки!"];
    colorCodes = [Colors.deepOrange, Colors.brown, Colors.grey, Colors.blue, Colors.lightGreen];
    picture = [ const Icon(Icons.arrow_upward, size: 50,),
      Image.asset("assets/pet1level3.png", width: 50,height: 50),
      Image.asset("assets/pet2level3.png", width: 50,height: 50),
      Image.asset("assets/pet3level3.png", width: 50,height: 50),
      Image.asset("assets/pet4level3.png", width: 50,height: 50),];
  }
}

_buyPet(context, int index){
  if(tapCount >= price[index]){
  if(index == 0){
    if(levelBackSave == 1){
    tapCount = tapCount - price[index];
    multiplier = multiplier + 1;
    } else if(levelBackSave == 2){
      tapCount = tapCount - price[index];
      multiplier = multiplier + 10;
    }else{
      tapCount = tapCount - price[index];
      multiplier = multiplier + 100;
    }
  } else if(index == 1){
    if(petBuy1 == false && levelBackSave == 1){
      petBuy1 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } else if(petBuy12 == false && levelBackSave == 2){
      petBuy12 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } if(petBuy13 == false && levelBackSave == 3){
      petBuy13 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    }
  } else if(index == 2){
    if(petBuy2 == false && levelBackSave == 1){
      petBuy2 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } else if(petBuy22 == false && levelBackSave == 2){
      petBuy22 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } if(petBuy23 == false && levelBackSave == 3){
      petBuy23 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    }
  } else if(index == 3){
    if(petBuy3 == false && levelBackSave == 1){
      petBuy3 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } else if(petBuy32 == false && levelBackSave == 2){
      petBuy32 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } if(petBuy33 == false && levelBackSave == 3){
      petBuy33 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    }
  } else if(index == 4){
    if(petBuy4 == false && levelBackSave == 1){
      petBuy4 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } else if(petBuy42 == false && levelBackSave == 2){
      petBuy42 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    } if(petBuy43 == false && levelBackSave == 3){
      petBuy43 = true;
      tapCount = tapCount - price[index];
      _levelBack(context);
    }
  }else if(index == 5){
    if(levelBuy2 == false && levelBackSave == 1){
      tapCount = tapCount - price[index];
      levelBuy2 = true;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Level2()),);
    } else if(levelBuy3 == false && levelBackSave == 2){
      tapCount = tapCount - price[index];
      levelBuy3 = true;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Level3()),);
    }
  }
} else{
    ScaffoldMessenger.of(context).showSnackBar(
     const SnackBar(
        content: Center(child: Text('Недостаточно очков или уже куплено'),)
      ),
    );
  }

}

