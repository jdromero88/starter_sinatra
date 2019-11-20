class SongController < Sinatra::Base
    set :views, "app/views/songs"
    set :method_override, true

    get '/songs' do
        erb :index
    end

    get '/songs/new' do
        erb :new
    end

    post '/songs' do
        new_song = Song.create(name: params[:name],length: params[:length], lyrics: params[:lyrics])
        new_join = BandSong.create(band_id: params[:band_id], song_id: new_song.id)
        redirect "/songs/#{new_song.id}"
    end

    get '/songs/:id' do
        @song = Song.find_by(id: params[:id])
        erb :show
    end

    patch '/songs/:id' do
        song = Song.find(params[:id])
        name = params[:name]
        length = params[:length]
        lyrics = params[:lyrics]
        song.update(name: name, length: length, lyrics: lyrics)
        redirect "/songs/#{song.id}"
    end

    get '/songs/:id/edit' do
        @song = Song.find_by(id: params[:id])
        erb :edit
    end

    delete '/songs/:id' do
        Song.destroy(params[:id])
        redirect '/songs'
    end
end
