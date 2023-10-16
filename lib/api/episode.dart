class Episode{
  double popularity;
  int voteCount;
  String posterPath;
  String name;
  String overview;
  double voteAverage;

  Episode({
    required this.popularity,
    required this.voteCount,
    required this.posterPath,
    required this.name,
    required this.overview,
    required this.voteAverage

    });

  get rating => null;

    static Episode fromJson(Map<String, dynamic>json){
      return Episode(
        popularity: (json['popularity'] as num).toDouble(),
        voteCount: json['vote_count'] as int,
        posterPath: json['poster_path'] as String,
        name: json['name'] as String,
        overview: json['overview'] as String,
        voteAverage: (json['vote_average'] as num).toDouble()
        );
    }

    String getImage(){
      return "https://image.tmdb.org/t/p/w500$posterPath";
    }
}