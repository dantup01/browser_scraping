require 'open-uri'
require 'nokogiri'

class Browser
  def fetch_content(url)
    html_content = open(url).read
    doc = Nokogiri::HTML(html_content)

    content = doc.text
    return content
  end
end
