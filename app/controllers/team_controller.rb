class TeamController < ApplicationController
  before_action :common, :only => [:index, :team]

  def common
    Faker::Config.locale = 'en-MS'
    @meta_name = Faker::Superhero.name
    @meta_power = Faker::Superhero.power

    @rand_num = rand(1..1000)
    @set = rand(1..4).to_s
    @bg = rand(1..2).to_s

    @avatar = Faker::Avatar.image(@rand_num, "300x300", "png", "set#{@set}", "bg#{@bg}")
  end

  def index
  end

  def team
    @team_number = params[:team_number].to_i
  end
end