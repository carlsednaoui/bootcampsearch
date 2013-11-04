class SitemapController < ApplicationController
  def index
    @static_pages = [root_url]
    @coding_bootcamps = CodingBootcamp.all
    respond_to do |format|
      format.xml
    end
  end
end