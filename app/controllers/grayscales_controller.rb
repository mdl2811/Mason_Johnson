class GrayscalesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  layout "grayscale"
    def index
    end
end
