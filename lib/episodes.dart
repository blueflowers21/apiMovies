import 'package:api/api/themoviedbservice.dart';
import 'package:api/ui/cajaseries.dart';
import 'package:api/ui/spinnerwidget.dart';
import 'package:flutter/material.dart';

class TopRatedEpisodes extends StatefulWidget {
  const TopRatedEpisodes({super.key});

  @override
  State<TopRatedEpisodes> createState() => _TopRatedEpisodesState();
}

class _TopRatedEpisodesState extends State<TopRatedEpisodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Series'),
      ),
      body: FutureBuilder(
        future: TheEpisodeDBService().getEpisode(), // Create an instance and call the method
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pelicula = snapshot.data![index];
                return CajaEpisodios(peli: pelicula);
              },
            );
          } else {
            return const SpinnerWidget();
          }
        },
      ),
    );
  }
}