class Movie < ActiveRecord::Base
      #Read
      def self.first_movie
        self.first
      end

      def self.last_movie
        self.last
      end

      def self.movie_count
        self.count
      end

      def self.find_movie_with_id(id)
        self.find(id)
      end

      def self.find_movie_with_attributes(title, release_date)
        self.find_by(title, release_date)
      end

      def self.find_movies_after_2002
        self.where("release_date > ?", 2002) 
      end

      #Create
      def self.create_with_title(title)
        movie = Movie.new
        movie[:title] = title
        movie.save
        movie
      end

      #Update
      def update_with_attributes(title)
        self.update(title)
      end

      def self.update_all_titles(title)
        Movie.update(title)
      end


      #Delete
      def self.delete_by_id(id)
        self.destroy(id)
      end

      def self.delete_all_movies
        Movie.destroy_all
      end
end