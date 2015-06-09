module Arxiv
  class Link
    include HappyMapper
    attribute :url, String, tag: 'href'
    attribute :content_type, String, tag: 'type'
    attribute :title, String
    attribute :rel, String

    def type
      content_type != '' ? content_type : title
    end
  end
end