part of 'game_demo.dart';

class Data {
  saveScore() async{
    Map data = {
      'tapCount': tapCount,
      'levelBackSave': levelBackSave,
      'multiplier': multiplier,
      'petBuy1': petBuy1,
      'petBuy2': petBuy2,
      'petBuy3': petBuy3,
      'petBuy4': petBuy4,
      'petBuy12': petBuy12,
      'petBuy22': petBuy22,
      'petBuy32': petBuy32,
      'petBuy42': petBuy42,
      'petBuy13': petBuy13,
      'petBuy23': petBuy23,
      'petBuy33': petBuy33,
      'petBuy43': petBuy43,
    };
    var encoded = json.encode(data);   // преобразуем в json
    File file = File("data.json");
    await file.writeAsString(encoded);
  }

  restoreScore()async {
    final data = await File("data.json").readAsString();
    final decoded = json.decode(data);

    tapCount = decoded['tapCount'];
    multiplier = decoded['multiplier'];
    levelBackSave = decoded['levelBackSave'];
    petBuy1 = decoded['petBuy1'];
    petBuy2 = decoded['petBuy2'];
    petBuy3 = decoded['petBuy3'];
    petBuy4 = decoded['petBuy4'];
    petBuy12 = decoded['petBuy12'];
    petBuy22 = decoded['petBuy22'];
    petBuy32 = decoded['petBuy32'];
    petBuy42 = decoded['petBuy42'];
    petBuy13 = decoded['petBuy13'];
    petBuy23 = decoded['petBuy23'];
    petBuy33 = decoded['petBuy33'];
    petBuy43 = decoded['petBuy43'];
  }
}