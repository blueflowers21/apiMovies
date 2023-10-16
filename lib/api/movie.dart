class Movie{
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  String title;
  String overview;
  double voteAverage;

  Movie({
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.posterPath,
    required this.title,
    required this.overview,
    required this.voteAverage

    });

  get rating => null;

    static Movie fromJson(Map<String, dynamic>json){
      return Movie(
        popularity: (json['popularity'] as num).toDouble(),
        voteCount: json['vote_count'] as int,
        video: json['video'] as bool,
        posterPath: json['poster_path'] as String,
        title: json['title'] as String,
        overview: json['overview'] as String,
        voteAverage: (json['vote_average'] as num).toDouble()
        );
    }

    String getImage(){
      return "https://image.tmdb.org/t/p/w500$posterPath";
    }
}