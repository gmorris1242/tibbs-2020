class DirectorController < ApplicationController
  def index
    directors = YAML.load_file('data/directors.yml')

    @director = directors.filter do |director|
      director['name'] == params[:director].humanize.titleize
    end

  end
end
