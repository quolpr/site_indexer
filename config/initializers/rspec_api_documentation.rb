# Values listed are the default values
RspecApiDocumentation.configure do |config|
  # An array of output format(s).
  # Possible values are :json, :html, :combined_text, :combined_json,
  #   :json_iodocs, :textile, :markdown, :append_json, :slate
  config.format = [:markdown]

  config.request_headers_to_include = ['Content-Type', 'Accept']
  config.response_headers_to_include = ['Content-Length', 'Content-Type']

  config.request_body_formatter = proc { |params| params.to_json }
end
