import 'package:flutter/material.dart';
import 'package:test_rappi/domain/entities/movie/movie_entity.dart';
import 'package:test_rappi/presentation/ui/widgets/calification_widget.dart';
import 'package:test_rappi/presentation/ui/widgets/image_network_with_load_widget.dart';

class MovieBigCardWidget extends StatelessWidget {
  final MovieEntity movie;
  const MovieBigCardWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ImageNetworkWithLoadWidget(
            'https://image.tmdb.org/t/p/w500/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
          ),
        ),
        Container(
          alignment: Alignment.center,
          transform: Matrix4.translationValues(
              0, -30, 0), // Mueve el widget hacia arriba
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: CalificationWidget(
                  size: 60,
                  rating: movie.voteAverage,
                ),
              ),
              const Text(
                "Guy movie",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text("7 nov 2024"),
            ],
          ),
        ),
      ],
    );
  }
}
