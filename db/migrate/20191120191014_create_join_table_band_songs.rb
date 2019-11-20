class CreateJoinTableBandSongs < ActiveRecord::Migration[5.2]
    def change
        create_table :band_songs do |t|
            t.integer :band_id
            t.integer :song_id
        end
    end
end
