import 'package:netflix/infrastructure/api_key.dart';
import '../../core/Strings.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl?api_key=$apiKey";
  static const search =
      "https://api.themoviedb.org/3/search/movie?api_key=$apiKey";
}
