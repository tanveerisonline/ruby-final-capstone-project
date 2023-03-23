require_relative './item'
class MusicAlbum < Item
  attr_accessor :on_spotify, :archived, :name
  attr_reader :publish_date

  def initialize(name, publish_date, on_spotify)
    super(publish_date)
    @name = name
    @on_spotify = on_spotify
    @publish_date = publish_date
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end
