module FlickrHelper
  def user_photos user_id, photo_count = 12
    FlickRaw.api_key = ENV['key']
    FlickRaw.shared_secret = ENV['secret']
    flickr.photos.search(user_id: user_id).first(photo_count)
  end

  def render_flickr_sidebar_widget user_id, photo_count = 12, columns = 2
    begin
      @photos = user_photos(user_id, photo_count).in_groups_of(2)
      render 'flickr/sidebar_widget'
    # rescue Exception
    #   render 'flickr/unavailable'
    end
  end

end
