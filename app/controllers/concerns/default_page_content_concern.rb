module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :default_page_content
  end

  def default_page_content
    @page_title = "Tim Fleming | Software Developer"
    @seo_keywords = "Tim Fleming Portfolio"
  end
end