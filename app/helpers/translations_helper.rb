module TranslationsHelper
  def translation_keys(i18n_locale)
    case i18n_locale
    when "en"
      en_keys
    when "ko"
      ko_keys
    else
      ko_keys
    end
  end

  private

  def en_keys
    [ "header.menu.home", "header.menu.about", "header.menu.service", "header.menu.group", "header.menu.love", "header.menu.belief", "header.menu.youth", "header.menu.choir", "header.menu.todak", "header.menu.news", "header.menu.blog", "header.menu.article", "header.menu.gallery", "header.menu.contact", "page.title", "footer.item1.title", "footer.item1.content", "footer.item2.title", "footer.item2.content", "footer.item3.title", "footer.item3.content", "home.title", "home.subtitle", "home.tab.item1.title", "home.tab.item1.content", "home.tab.item2.title", "home.tab.item2.content", "home.tab.item3.title", "home.tab.item3.content", "home.tab.item4.title", "home.tab.item4.content", "home.tab.item5.title", "home.tab.item5.content", "home.tab.item6.title", "home.tab.item6.content", "about.title", "about.list.item1.title", "about.list.item1.content", "about.list.item2.title", "about.list.item2.content", "about.list.item3.title", "about.list.item3.content", "about.list.item4.title", "about.list.item4.content", "about.list.item5.title", "about.list.item5.content", "contact.title", "contact.contact" ]
  end

  def ko_keys
    [ "header.menu.home", "header.menu.about", "header.menu.service", "header.menu.group", "header.menu.love", "header.menu.belief", "header.menu.youth", "header.menu.choir", "header.menu.todak", "header.menu.news", "header.menu.blog", "header.menu.article", "header.menu.gallery", "header.menu.contact", "page.title", "footer.item1.title", "footer.item1.content", "footer.item2.title", "footer.item2.content", "footer.item3.title", "footer.item3.content", "home.title", "home.subtitle", "home.tab.item1.title", "home.tab.item1.content", "home.tab.item2.title", "home.tab.item2.content", "home.tab.item3.title", "home.tab.item3.content", "home.tab.item4.title", "home.tab.item4.content", "home.tab.item5.title", "home.tab.item5.content", "home.tab.item6.title", "home.tab.item6.content", "about.title", "about.list.item1.title", "about.list.item1.content", "about.list.item2.title", "about.list.item2.content", "about.list.item3.title", "about.list.item3.content", "about.list.item4.title", "about.list.item4.content", "about.list.item5.title", "about.list.item5.content", "contact.title", "contact.contact" ]
  end

  def translation_for_key(translations, key)
    hits = translations.to_a.select{ |t| t.key == key }
    hits.first
  end
end
