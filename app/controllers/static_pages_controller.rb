class StaticPagesController < ApplicationController
  def home
    locale = params[:locale] || I18n.default_locale
    @item_count = Translation.where("locale = ? AND translations.key LIKE ? AND translations.key LIKE ?", locale, "hometab%", "%title").count
  end

  def about    
    locale = params[:locale] || I18n.default_locale
    @item_count = Translation.where("locale = ? AND translations.key LIKE ? AND translations.key LIKE ?", locale, "about.list%", "%title").count
  end

  def contact
  end

  def introduction
  end

  def service_info
  end

  def groups
  end

  def news
  end
  
  def blog
    @articles = Article.all
  end
  
  def gallery
    @photos = Photo.all
  end
end
