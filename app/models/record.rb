class Record < ActiveRecord::Base

  has_many :lists_records
  has_many :lists, through: :lists_records

  def self.search_albums(album)
    RSpotify::Album.search(album)
  end

  def self.search_albums_by_id(id)
    RSpotify::Album.find(id)
  end

  def self.artist_name
    self.search_albums(album).artists.first.name
  end

  def self.release_date
    self.search_albums(album).release_date
  end

  def self.image
    image = self.search_albums(album).images.first
    image['url']
  end

  def self.track_list
    track = search_albums(album).tracks.map {|track| track.name}
  end

end
