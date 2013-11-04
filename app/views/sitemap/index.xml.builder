xml.instruct!
xml.urlset(
  'xmlns'.to_sym => "http://www.sitemaps.org/schemas/sitemap/0.9",
  'xmlns:image'.to_sym => "http://www.google.com/schemas/sitemap-image/1.1"
) do
  @static_pages.each do |page|
    xml.url do
      xml.loc "#{page}"
      xml.changefreq("monthly")
    end
  end
  @coding_bootcamps.each do |coding_bootcamp|
    xml.url do
      xml.loc "#{coding_bootcamp_url(coding_bootcamp)}"
      xml.changefreq("monthly")
    end
  end
end