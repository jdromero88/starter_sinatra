class CreateTableBands < ActiveRecord::Migration[5.2]
    def change
        create_table :bands do |t|
            t.string :name
            t.string :info
        end
    end
end
