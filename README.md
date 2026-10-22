Movie Library App

A simple Flutter app that shows a collection of movies. You can search by title or genre and switch between a list view and a grid view.

Features
Movie cards with a poster, rating, bookmark icon, release year, title and genre
Switch between list view and grid view with one button
Search by title or genre (not case-sensitive)
"No movies found" message when nothing matches
Bonus: tap the discount badge on any card and it changes on all cards
Project Structure
lib/
  main.dart         -> MaterialApp + theme
  home_page.dart    -> HomePage
  movie_card.dart   -> MovieCard
  movie.dart        -> Movie class + movies list
assets/posters/     -> movie posters
How to Run
bash
flutter pub get
flutter run
