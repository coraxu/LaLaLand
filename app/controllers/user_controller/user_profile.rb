#this class outputs the the html which corresponds to the article.

# YOU NEED THIS;
class UserController
  class UserProfile
    attr_reader :href, :src, :id, :text

    # need to separate input with commas
    def initialize(href, src, id, text)
      @href = href
      @src = src
      @id = id
      @text = text
    end

    def outputHTML
      return "<a href=\"#{@href}\" id=\"#{@id}\" target=\"_blank\">\n"+
      "<div class=\"article_image\"> \n" + "<img src=\"#{@src}\">\n </div>
      <div class=\"article_text\">" + "#{@text}\n </div></a>"
    end

    def favourites
      if getStatus
        return "<a href=\"\\user\\isFavourite\\#{@id}\" >
        <img src=\"https://png.icons8.com/ultraviolet/25/000000/add-to-favorites.png\"></a>"
      else
        return "<a href=\"\\user\\isFavourite\\#{@id}\" >
        <img src=\"https://png.icons8.com/ios/25/000000/add-to-favorites.png\"></a>"
      end
    end

    def share_buttons
      "<a href=\"https://www.facebook.com/sharer/sharer.php?u=#{@href}\" target=\"_blank\">
      <img src=\"https://png.icons8.com/color/25/000000/facebook.png\"></a>
      <a href=\"https://twitter.com/intent/tweet?url=#{@href}\" target=\"_blank\">
      <img src=\"https://png.icons8.com/color/25/000000/twitter.png\"></a>
      <a href=\"https://plus.google.com/share?url=#{@href}\" target=\"_blank\">
      <img src=\"https://png.icons8.com/color/25/000000/google-plus.png\"></a>"
    end

    def getStatus
      if Favourite.find_by_article_id(@id).nil?
        return false
      else
        return true
      end
    end
  end
end
