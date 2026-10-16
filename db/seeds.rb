
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
    release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13',
    release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R',
    release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R',
    release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13',
    release_date: '13-Aug-2021' },
  { title: 'The Shawshank Redemption', rating: 'R',
    release_date: '14-Oct-1994' },
  { title: 'Spirited Away', rating: 'PG',
    release_date: '20-Jul-2001' },
  { title: 'The Social Network', rating: 'PG-13',
    release_date: '01-Oct-2010' }
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |new_movie|
    new_movie.rating = movie[:rating]
    new_movie.release_date = movie[:release_date]
  end
end
