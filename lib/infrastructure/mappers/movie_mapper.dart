import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieMovieDB movieDb) => Movie(
      adult: movieDb.adult,
      backdropPath:(movieDb.backdropPath != '')
      ? 'https://image.tmdb.org/t/p/w500/${movieDb.backdropPath}'
      : 'https://www.gmt-sales.com/wp-content/uploads/2015/10/no-image-found.jpg',
      genreIds:movieDb.genreIds.map((e) => e.toString()).toList(),
      id: movieDb.id,
      originalLanguage:movieDb.originalLanguage,
      originalTitle:movieDb.originalTitle,
      overview: movieDb.overview,
      popularity: movieDb.popularity,
      posterPath:(movieDb.posterPath != '')
      ? 'https://image.tmdb.org/t/p/w500/${movieDb.posterPath}'
      : 'no-poster',
      releaseDate:movieDb.releaseDate,
      title: movieDb.title,
      video: movieDb.video,
      voteAverage:movieDb.voteAverage,
      voteCount:movieDb.voteCount);

  static Movie movieDetailsToEntity(MovieDetails movie) => Movie(
      adult: movie.adult,
      backdropPath:(movie.backdropPath != '')
      ? 'https://image.tmdb.org/t/p/w500/${movie.backdropPath}'
      : 'https://www.gmt-sales.com/wp-content/uploads/2015/10/no-image-found.jpg',
      genreIds:movie.genres.map((e) => e.name).toList(),
      id: movie.id,
      originalLanguage:movie.originalLanguage,
      originalTitle:movie.originalTitle,
      overview: movie.overview,
      popularity: movie.popularity,
      posterPath:(movie.posterPath != '')
      ? 'https://image.tmdb.org/t/p/w500/${movie.posterPath}'
      : 'https://www.gmt-sales.com/wp-content/uploads/2015/10/no-image-found.jpg',
      releaseDate:movie.releaseDate,
      title: movie.title,
      video: movie.video,
      voteAverage:movie.voteAverage,
      voteCount:movie.voteCount);
}
