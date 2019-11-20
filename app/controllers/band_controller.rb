class BandController < Sinatra::Base
    set :views, "app/views/bands"
    set :method_override, true

    get '/bands' do
        erb :index
    end

    get '/bands/new' do
        erb :new
    end

    post '/bands' do
        new_band = Band.create(name: params[:name],info: params[:info])
        redirect "/bands/#{new_band.id}"
    end

    get '/bands/:id' do
        band_id = params[:id]
        @band = Band.find_by(id: band_id)
        erb :show
    end

    patch '/bands/:id' do
        band = Band.find(params[:id])
        name = params[:name]
        info = params[:info]
        band.update(name: name, info: info)
        redirect "/bands/#{band.id}"
    end
    get '/bands/:id/edit' do
        @band = Band.find_by(id: params[:id])
        erb :edit
    end

    delete '/bands/:id' do
        Band.destroy(params[:id])
        redirect '/bands'
    end

end
