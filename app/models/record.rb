class Record < ActiveRecord::Base

  has_many :lists_records
  has_many :lists, through: :lists_records

  def self.search_albums(album)
    RSpotify::Album.search(album)
  end

  def self.artist_name
    self.search_albums(album)
    artists.first.artists.first.name
  end

  def self.release_date
    self.search_albums(album)
    artists.first.release_date
  end

  def self.image
    self.search_albums(album)
    image = artists.first.images.first
    image['url']
  end

end
