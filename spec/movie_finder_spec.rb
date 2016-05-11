require "movie_finder"

describe MovieFinder do
  let(:name) { "Blade Runner" }

  describe ".find" do
    context "checks gem works" do
      it "returns the movie name it is being passed" do
        movie = MovieFinder.find(name)
        expect(movie.movies.title).to eql(name)
      end
    end
  end
end
