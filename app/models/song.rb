class Song < ActiveRecord::Base
    has_many :band_songs #The name of the other model is pluralized when declaring a has_many association.
    has_many :bands, :through => :band_songs
end
