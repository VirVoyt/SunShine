//в этом файле происходит "активация" питомев и подстчет их силы

part of 'game_demo.dart';

Widget _pet(){
    if (petBuy1 == true && levelBackSave == 1) {//цветок
      petPower1 = 20;
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
    } else if (petBuy12 == true && levelBackSave == 2){//краб
      petPower12 = 200;
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
    } else if (petBuy13 && levelBackSave == 3){             //олень
      petPower13 = 2000;
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

Widget _pet2() {
  //бабочка
  if (petBuy2 == true && levelBackSave == 1) {
    petPower2 = 50;
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
  } else if (petBuy22 == true && levelBackSave == 2) { //акула
    petPower22 = 500;
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
  } else if (petBuy23 == true && levelBackSave == 3) {
    petPower23 = 5000;
    return SizedBox( //ястреб
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


Widget _pet3() {
  //воробей
    if (petBuy3 == true && levelBackSave == 1) {
      petPower3 = 70;
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
    } else if (petBuy32 == true && levelBackSave == 2) {//облако
      petPower32 = 700;
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
    } else if (petBuy33 == true && levelBackSave == 3) {
      petPower33 = 7000;
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

Widget _pet4(){
  if (petBuy4 == true && levelBackSave == 1) {//жук
    petPower4 = 90;
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
  } else if(petBuy42 == true && levelBackSave == 2){//чайка
    petPower42 = 900;
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
  } else if (petBuy43 == true && levelBackSave == 3){//орел
      petPower43 = 9000;
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