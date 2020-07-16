import 'package:path_provider/path_provider.dart';

Future<String> getDirectoryPath() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  return dbFolder.path;
}
