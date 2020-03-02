class DirectorController < ApplicationController
  def index
    directors = YAML.load_file('data/directors.yml')

    @director = directors.filter do |director|
      director['name'].parameterize == params[:director]
    end

  end
end
