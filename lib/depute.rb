require 'nokogiri'
require 'open-uri'


all_emails_links.each do |email_link|
      puts email_link.text #ou n'importe quelle autre opération de ton choix ;)
      end

      page.xpath('//a[@href*="mailto"]')

     Tu peux aussi récupérer le texte du href d'un élément HTML avec email_link['href']
