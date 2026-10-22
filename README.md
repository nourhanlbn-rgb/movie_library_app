# Movie Library App

A simple Flutter app that displays a collection of movies. You can search by title or genre and switch between list and grid views.

## Features

* Movie cards displaying a poster, rating, bookmark icon, release year, title, and genre.
* Switch between list view and grid view with one button.
* Search by title or genre (case-insensitive).
* Display a "No movies found" message when no movies match the search.
* **Bonus:** Tap the discount badge on any card, and it changes on all cards.

## Project Structure

```text
lib/
├── main.dart          # MaterialApp + theme
├── home_page.dart     # HomePage
├── movie_card.dart    # MovieCard
└── movie.dart         # Movie class + movies list

assets/
└── posters/           # Movie poster images
```

## How to Run

Make sure Flutter is installed, then run these commands in your terminal:

```bash
flutter pub get
flutter run
```
