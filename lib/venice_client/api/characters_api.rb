=begin
#Venice.ai API

#The Venice.ai API.

OpenAPI spec version: 20250521.233203

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module VeniceClient
  class CharactersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # /api/v1/characters
    # This is a preview API and may change. Returns a list of characters supported in the API.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20013]
    def list_characters(opts = {})
      data, _status_code, _headers = list_characters_with_http_info(opts)
      data
    end

    # /api/v1/characters
    # This is a preview API and may change. Returns a list of characters supported in the API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20013, Integer, Hash)>] InlineResponse20013 data, response status code and response headers
    def list_characters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CharactersApi.list_characters ...'
      end
      # resource path
      local_var_path = '/characters'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse20013' 

      auth_names = opts[:auth_names] || ['BearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CharactersApi#list_characters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
