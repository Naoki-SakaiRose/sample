class SyousaisController < ApplicationController
  before_action :authenticate_user!
  def index
    @syousai = Item.new
  end
end