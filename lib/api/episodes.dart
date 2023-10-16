
import 'package:api/api/episode.dart';

class Episodes {
  Episodes();

  static List< Episode> fromJsonList(List<dynamic> jsonList){
    List<Episode> listaEpisodio=[];
    if(jsonList !=null){
      for (var episodio in jsonList){
        final episode = Episode.fromJson(episodio);
        listaEpisodio.add(episode);
      }
    }
    return listaEpisodio;
  }
}