part of 'game_demo.dart';


class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.txt');
  }

  Future<double> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      data = double.parse(contents);
      data = 10;
      return data;

    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  Future<File> writeCounter() async {
    final file = await _localFile;

    // Write the file
    debugPrint("$tapCount");
    return file.writeAsString('$tapCount');
  }
}
