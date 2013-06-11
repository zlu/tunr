class Song < ActiveRecord::Base
  attr_accessible :album_id, :artist_id, :name

  has_and_belongs_to_many :genres
  belongs_to :album
  belongs_to :artist
end
