class CreateTableSongs < ActiveRecord::Migration[5.2]
    def change
        create_table :songs do |t|
            t.string :name
            t.string :lyrics
            t.string :length
        end
    end
end
