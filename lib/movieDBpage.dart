// ignore_for_file: file_names

import 'package:api/api/themoviedbservice.dart';
import 'package:api/ui/cajapelicula.dart';
import 'package:api/ui/spinnerwidget.dart';
import 'package:flutter/material.dart';

class MovieDB extends StatefulWidget {
  const MovieDB({super.key});

  @override
  State<MovieDB> createState() => _MovieDBState();
}

class _MovieDBState extends State<MovieDB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated Movies'),
      ),
      body: FutureBuilder(
        future: TheMovieDBService().getTopRatedMovies(), // Create an instance and call the method
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pelicula = snapshot.data![index];
                return CajaPelicula(peli: pelicula);
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
