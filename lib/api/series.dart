import 'package:api/api/serie.dart';

class Series {
 Series();

  static List< Serie> fromJsonList(List<dynamic> jsonList){
    List<Serie> listaSeries=[];
    if(jsonList !=null){
      for (var show in jsonList){
        final serie = Serie.fromJson(show);
        listaSeries.add(serie);
      }
    }
    return listaSeries;
  }
}