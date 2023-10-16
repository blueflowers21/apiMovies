// ignore_for_file: file_names

import 'package:api/api/themoviedbservice.dart';
import 'package:api/ui/cajapelicula.dart';
import 'package:api/ui/spinnerwidget.dart';
import 'package:flutter/material.dart';

class NowPlayinMovies extends StatefulWidget {
  const NowPlayinMovies({super.key});

  @override
  State<NowPlayinMovies> createState() => _NowPlayinMoviesState();
}

class _NowPlayinMoviesState extends State<NowPlayinMovies> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Now Playing'),
      ),
      body: FutureBuilder(
        future: TheNowMovieDBService().getNewMovies(), // Create an instance and call the method
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pelicula = snapshot.data![index];
                return CajaNuevaPelicula(peli: pelicula);
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