import 'package:api/api/themoviedbservice.dart';
import 'package:api/ui/cajaseries.dart';
import 'package:api/ui/spinnerwidget.dart';
import 'package:flutter/material.dart';

class TopRatedSeries extends StatefulWidget {
  const TopRatedSeries({super.key});

  @override
  State<TopRatedSeries> createState() => _TopRatedSeriesState();
}

class _TopRatedSeriesState extends State<TopRatedSeries> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated Series'),
      ),
      body: FutureBuilder(
        future: TheSerieDBService().getSeries(), // Create an instance and call the method
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pelicula = snapshot.data![index];
                return CajaSeries(serie: pelicula);
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