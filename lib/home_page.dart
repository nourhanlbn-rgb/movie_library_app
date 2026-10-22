import 'package:flutter/material.dart';

import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;
  String query = '';
  int discount = 20;

  @override
  Widget build(BuildContext context) {
    final filteredMovies = movies.where((m) {
      final q = query.toLowerCase();
      return m.title.toLowerCase().contains(q) ||
          m.genre.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Library'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(isGrid ? Icons.view_list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: filteredMovies.isEmpty
                ? const Center(child: Text('No movies found'))
                : isGrid
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 0.7,
                        ),
                    itemCount: filteredMovies.length,
                    itemBuilder: (context, index) {
                      return MovieCard(
                        movie: filteredMovies[index],
                        discount: discount,
                        onDiscountTap: () {
                          setState(() {
                            discount--;
                          });
                        },
                      );
                    },
                  )
                : ListView.builder(
                    itemCount: filteredMovies.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: SizedBox(
                          width: 300,
                          height: 380,
                          child: MovieCard(
                            movie: filteredMovies[index],
                            discount: discount,
                            onDiscountTap: () {
                              setState(() {
                                discount--;
                              });
                            },
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
