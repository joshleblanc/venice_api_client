=begin
#Venice.ai API

#The Venice.ai API.

OpenAPI spec version: 20250521.233203

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module VeniceClient
  class EmbeddingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # /api/v1/embeddings
    # Create embeddings for the supplied input. This is a beta model accessible to Venice beta testers.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_encoding Supported compression encodings (gzip, br)
    # @return [InlineResponse20014]
    def create_embedding(body, opts = {})
      data, _status_code, _headers = create_embedding_with_http_info(body, opts)
      data
    end

    # /api/v1/embeddings
    # Create embeddings for the supplied input. This is a beta model accessible to Venice beta testers.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_encoding Supported compression encodings (gzip, br)
    # @return [Array<(InlineResponse20014, Integer, Hash)>] InlineResponse20014 data, response status code and response headers
    def create_embedding_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmbeddingsApi.create_embedding ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EmbeddingsApi.create_embedding"
      end
      # resource path
      local_var_path = '/embeddings'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept-Encoding'] = opts[:'accept_encoding'] if !opts[:'accept_encoding'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'InlineResponse20014' 

      auth_names = opts[:auth_names] || ['BearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmbeddingsApi#create_embedding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
