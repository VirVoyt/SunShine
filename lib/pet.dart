//в этом файле происходит "активация" питомев и подстчет их силы

part of 'game_demo.dart';

Widget _pet(){
  if (petBuy1 == true){
    petPower1 = 2;
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(tapFlag ? "assets/pet.png" : "assets/petHit.png" ))
        ),
        child: Container(alignment: const Alignment(0, -1.5),
            child:
            _textCountForPet1()
        ),
      ),
    );
  } else {
    return Container();
  }
}

Widget _pet2(){
  if (petBuy2 == true){
    petPower2 = 5;
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(tapFlag ?  "assets/бабочка.png" : "assets/бабочкаHit.png"))
        ),
        child: Container(
          alignment: const Alignment(0, -1.5),
          child: _textCountForPet2(),
        ),
      ),
    );
  } else {
    return Container();
  }
}

Widget _pet3(){
  if (petBuy2 == true){
    petPower3 = 7;
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(tapFlag ? "assets/облако.png" : "assets/облакоHit.png"))
        ),
        child: Container(alignment: const Alignment(0, -1.3),
            child: _textCountForPet3()),
      ),
    );
  } else {
    return Container();
  }
}

Widget _pet4(){
  if (petBuy2 == true){
    petPower4 = 9;
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(tapFlag ? "assets/жук.png" : "assets/жукHit.png" ))
        ),
        child: Container(alignment: const Alignment(0, -1.3),
            child: _textCountForPet4()),
      ),
    );
  } else {
    return Container();
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
    return Container();
  }
}