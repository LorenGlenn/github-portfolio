class ProjectsController < ApplicationController

  # GET /projects
  # GET /projects.json
  def index
    @projects = HTTParty.get("https://api.github.com/users/lorenglenn/repos?per_page=100&access_token=" + ENV['AUTH_TOKEN'],
                            headers: {"User-Agent" => "github-prac"
                                      })
  end
end
