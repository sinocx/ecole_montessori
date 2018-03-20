class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def school
  end

  def information
  end

  def pedagogie
  end

  def programme
  end

  def contact
  end
end
