class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = HTTParty.get("https://api.github.com/users/lorenglenn/repos?per_page=100&access_token=" + ENV['AUTH_TOKEN'],
                            headers: {"User-Agent" => "github-prac"
                                      })
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.fetch(:project, {})
    end
end
