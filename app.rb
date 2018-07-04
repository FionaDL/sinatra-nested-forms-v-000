require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      erb :new
    end

    post "/pirates" do
      @pirates = Pirate.new(params[:pirate])
      binding.pry
      erb :show
    end
    # code other routes/actions here

  end
end
