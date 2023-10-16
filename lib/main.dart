import 'package:api/episodes.dart';
import 'package:api/movieDBpage.dart';
import 'package:api/nowPlaying.dart';
import 'package:api/series.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey, // Set the primary color
        hintColor: Colors.orange, // Set the accent color
        fontFamily: 'Roboto', // Use a custom font family
      ),
      home: const HomePage(),
      routes: {
        '/screen1': (context) => const MovieDB(),
        '/screen2': (context) => const TopRatedEpisodes(),
        '/screen3': (context) => const TopRatedSeries(),
         '/screen4': (context) => const NowPlayinMovies(),

      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie & Series App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen1'); 
              },
              child: const Text('Top Rated Movies'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen2'); 
              },
              child: const Text('Series Populares'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen3'); 
              },
              child: const Text('Top Rated Series'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen4'); 
              },
              child: const Text('Now Playing'),
            ),
          ],
        ),
      ),
    );
  }
}
