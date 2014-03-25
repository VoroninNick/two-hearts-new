class AboutController < ApplicationController
  def index
    @members ||= Team.all
  end
end
