class StaticPagesController < ApplicationController
  def home
    locale = params[:locale] || I18n.default_locale
    @item_count = Translation.where("locale = ? AND key LIKE ? AND key LIKE ?", locale, "home.tab%", "%title").count
  end

  def about    
    locale = params[:locale] || I18n.default_locale
    @item_count = Translation.where("locale = ? AND key LIKE ? AND key LIKE ?", locale, "about.list%", "%title").count
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
end
