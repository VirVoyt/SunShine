//в этом файле происходит "активация" питомев и подстчет их силы

part of 'game_demo.dart';

Widget _pet(int levelSave){
  if(petBuy1 == true) {
    if (levelSave == 1) {//цветок
      petPower1 = 2;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet.png" : "assets/petHit.png"))
          ),
          child: Container(alignment: const Alignment(0, -1.5),
            //   child:
            //   _textCountForPet1()
          ),
        ),
      );
    } else if (levelSave == 2){//краб
      petPower1 = 200;
      return SizedBox(
        width: 150,
        height: 150,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet1Level2.png" : "assets/pet1Level2h.png"))
          ),
          child: Container(alignment: const Alignment(0, -1.5),
            //   child:
            //   _textCountForPet1()
          ),
        ),
      );
    } else{             //олень
      petPower1 = 2000;
      return SizedBox(
        width: 150,
        height: 150,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet1level3.png" : "assets/pet1level3h.png"))
          ),
          child: Container(alignment: const Alignment(0, -1.5),
            //   child:
            //   _textCountForPet1()
          ),
        ),
      );
    }
  } else {
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/petFalse.png"))
          ),
        ),
      );
    }
  }

Widget _pet2(int levelSave){
  if (petBuy2 == true) {//бабочка
    if (levelSave == 1) {
      petPower2 = 5;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/бабочка.png" : "assets/бабочкаHit.png"))
          ),
          child: Container(
            // alignment: const Alignment(0, -1.5),
            // child: _textCountForPet2(),
          ),
        ),
      );
    } else if(levelSave == 2) {//акула
      petPower1 = 50;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet2level2.png" : "assets/pet2level2h.png"))
          ),
          child: Container(alignment: const Alignment(0, -1.5),
            //   child:
            //   _textCountForPet1()
          ),
        ),
      );
    } else{
      petPower1 = 500;
      return SizedBox(//ястреб
        width: 150,
        height: 150,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet2level3.png" : "assets/pet2level3h.png"))
          ),
          child: Container(alignment: const Alignment(0, -1.5),
            //   child:
            //   _textCountForPet1()
          ),
        ),
      );
    }
  } else {
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/petFalse.png"))
          ),
        ),
      );
    }
  }


Widget _pet3(int levelSave) {
  if (petBuy3 == true) {//воробей
    if (levelSave == 1) {
      petPower3 = 7;
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet3level1.png" : "assets/pet3level1h.png"))
          ),
          //  child: Container(alignment: const Alignment(0, -1.3),
          // child: _textCountForPet3()),
        ),
      );
    } else if (levelSave == 2) {//облако
      petPower3 = 70;
      return SizedBox(
        width: 150,
        height: 150,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/облако.png" : "assets/облакоHit.png"))
          ),
          //  child: Container(alignment: const Alignment(0, -1.3),
          // child: _textCountForPet3()),
        ),
      );
    } else {
      petPower3 = 700;
      return SizedBox(//медведь
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  tapFlag ? "assets/pet3level3.png" : "assets/pet3level3h.png"))
          ),
          //  child: Container(alignment: const Alignment(0, -1.3),
          // child: _textCountForPet3()),
        ),
      );
    }
  } else {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/petFalse.png"))
        ),
      ),
    );
  }
}

Widget _pet4(int levelSave){
  if(petBuy4 == true){
  if (levelSave == 1) {//жук
    petPower4 = 9;
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(
                tapFlag ? "assets/жук.png" : "assets/жукHit.png"))
        ),
        // child: Container(alignment: const Alignment(0, -1.3),
        //    child: _textCountForPet4()),
      ),
    );
  } else if(levelSave == 2){//чайка
    petPower4 = 9;
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(
                tapFlag ? "assets/pet3level2.png" : "assets/pet3level2h.png"))
        ),
        // child: Container(alignment: const Alignment(0, -1.3),
        //    child: _textCountForPet4()),
      ),
    );
  } else {//орел
      petPower4 = 900;
      return SizedBox(
        width: 150,
        height: 150,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(tapFlag ? "assets/pet4level3.png" : "assets/pet4level3h.png" ))
          ),
          // child: Container(alignment: const Alignment(0, -1.3),
          //    child: _textCountForPet4()),
        ),
      );
    }} else {
      return SizedBox(
        width: 100,
        height: 100,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/petFalse.png"))
          ),
        ),
      );
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
    return Container();}}