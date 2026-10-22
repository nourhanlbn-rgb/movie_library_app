class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  const Movie(
    title: 'John Wick',
    genre: 'Action',
    year: 2014,
    rating: 7.5,
    image: r'assets/posters/movie1.jpg',
  ),
  const Movie(
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    image: r'assets/posters/movie2.jpg',
  ),
  const Movie(
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.7,
    image: r'assets/posters/movie3.jpg',
  ),
  const Movie(
    title: 'The Odyssey',
    genre: 'Fantasy',
    year: 2025,
    rating: 8.4,
    image: r'assets/posters/movie4.jpg',
  ),
  const Movie(
    title: 'Man of Steel',
    genre: 'Action',
    year: 2013,
    rating: 7.1,
    image: r'assets/posters/movie5.jpg',
  ),
  const Movie(
    title: 'The Avengers',
    genre: 'Action',
    year: 2012,
    rating: 8.0,
    image: r'assets/posters/movie6.jpg',
  ),
  const Movie(
    title: 'Pride and Prejudice',
    genre: 'Romance',
    year: 2005,
    rating: 7.8,
    image: r'assets/posters/movie7.jpg',
  ),
  const Movie(
    title: 'Little Women',
    genre: 'Drama',
    year: 2019,
    rating: 7.7,
    image: r'assets/posters/movie8.jpg',
  ),
];
