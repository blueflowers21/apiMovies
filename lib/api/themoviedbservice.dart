import 'package:api/api/episode.dart';
import 'package:api/api/episodes.dart';
import 'package:api/api/movie.dart';
import 'package:api/api/movies.dart';
import 'package:api/api/nowmovie.dart';
import 'package:api/api/nowmovies.dart';
import 'package:api/api/serie.dart';
import 'package:api/api/series.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TheMovieDBService{
  // ignore: non_constant_identifier_names
  final String Api_url="https://api.themoviedb.org/3";
  // ignore: non_constant_identifier_names
  final String Api_key ="60bffff53b3606ed613e4f7aa7924756";
  Future<List<Movie>> getTopRatedMovies() async {
    var url= "$Api_url/movie/top_rated?api_key=$Api_key&language=e";
    final respuesta = await http.get(Uri.parse(url));

  
  if (respuesta.statusCode == 200){
    final respuestaJson = json.decode(respuesta.body);
    final peliculasMejorValoradas=Movies.fromJsonList(respuestaJson['results']);
    return peliculasMejorValoradas;
  }
  return <Movie>[];
  }
  
  
}
class TheNowMovieDBService{
   // ignore: non_constant_identifier_names
  final String Api_url="https://api.themoviedb.org/3";
  // ignore: non_constant_identifier_names
  final String Api_key ="60bffff53b3606ed613e4f7aa7924756";
Future<List<NowMovie>> getNewMovies() async {
    var url= "$Api_url/movie/popular?api_key=$Api_key&language=e";
    final respuesta = await http.get(Uri.parse(url));

  
  if (respuesta.statusCode == 200){
    final respuestaJson = json.decode(respuesta.body);
    final nowPlaying=NowMovies.fromJsonList(respuestaJson['results']);
    return nowPlaying;
  }
  return <NowMovie>[];
   
}
}

class TheSerieDBService{
   // ignore: non_constant_identifier_names
  final String Api_url="https://api.themoviedb.org/3";
  // ignore: non_constant_identifier_names
  final String Api_key ="60bffff53b3606ed613e4f7aa7924756";
Future<List<Serie>> getSeries() async {
    var url= "$Api_url/tv/top_rated?api_key=$Api_key&language=e";
    final respuesta = await http.get(Uri.parse(url));

  
  if (respuesta.statusCode == 200){
    final respuestaJson = json.decode(respuesta.body);
    final topSeries=Series.fromJsonList(respuestaJson['results']);
    return topSeries;
  }
  return <Serie>[];
   
}
}

class TheEpisodeDBService{
   // ignore: non_constant_identifier_names
  final String Api_url="https://api.themoviedb.org/3";
  // ignore: non_constant_identifier_names
  final String Api_key ="60bffff53b3606ed613e4f7aa7924756";
Future<List<Episode>> getEpisode() async {
    var url= "$Api_url/tv/popular?api_key=$Api_key&language=e";
    final respuesta = await http.get(Uri.parse(url));

  
  if (respuesta.statusCode == 200){
    final respuestaJson = json.decode(respuesta.body);
    final nowPlaying=Episodes.fromJsonList(respuestaJson['results']);
    return nowPlaying;
  }
  return <Episode>[];
   
}
}
