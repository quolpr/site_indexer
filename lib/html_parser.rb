class HtmlParser
  WHITELIST = %w(h1 h2 h3 a).freeze

  def initialize(html, whitelist = WHITELIST)
    @doc = Nokogiri::HTML(html)
    @whitelist = whitelist
    @result = []
  end

  def parse(node = @doc)
    add_to_result(node) if in_whitelist?(node)
    node.children.each(&method(:parse))
    @result
  end

  def self.from_text(text)
    HtmlParser.new(text).parse
  end

  def self.from_url(url)
    result = Net::HTTP.get_response(URI.parse(url))
    [result.code, from_text(result.body)]
  end

  private

  def in_whitelist?(node)
    @whitelist.include? node.name
  end

  def add_to_result(node)
    @result << {
      'content' => node.text,
      'tag' => node.name
    }
  end
end
