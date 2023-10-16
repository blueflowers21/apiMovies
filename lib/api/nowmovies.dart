
import 'package:api/api/nowmovie.dart';

class NowMovies {
  NowMovies();

  static List< NowMovie> fromJsonList(List<dynamic> jsonList){
    List<NowMovie> listaPeliculas=[];
    if(jsonList !=null){
      for (var pelicula in jsonList){
        final movie = NowMovie.fromJson(pelicula);
        listaPeliculas.add(movie);
      }
    }
    return listaPeliculas;
  }
}