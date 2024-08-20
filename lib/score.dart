part of 'game_demo.dart';

class Data {
   Future saveScore() async {
     final prefs = await SharedPreferences.getInstance();
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
     JsonEncoder encoder = const JsonEncoder();
     String json = encoder.convert(data);
     prefs.setString('data', json);
  }

 Future restoreScore() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString('data');
    if (json == null) return;

    JsonDecoder decoder = const JsonDecoder();
    Map data = decoder.convert(json);

    tapCount = data['tapCount'];
    multiplier = data['multiplier'];
    levelBackSave = data['levelBackSave'];
    petBuy1 = data['petBuy1'];
    petBuy2 = data['petBuy2'];
    petBuy3 = data['petBuy3'];
    petBuy4 = data['petBuy4'];
    petBuy12 = data['petBuy12'];
    petBuy22 = data['petBuy22'];
    petBuy32 = data['petBuy32'];
    petBuy42 = data['petBuy42'];
    petBuy13 = data['petBuy13'];
    petBuy23 = data['petBuy23'];
    petBuy33 = data['petBuy33'];
    petBuy43 = data['petBuy43'];
  }
}