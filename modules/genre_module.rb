require_relative '../models/genre'
require 'date'

module GenreModule
  def display_genres()
    if @genres.empty?
      puts 'No genres found'
    else
      puts "\nExisting genres in the list:"
    end
    @genres.each_with_index do |genre, i|
      puts "\n #{i + 1}) Genre Name:#{genre.name}"
    end
  end
end
