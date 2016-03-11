module Documentation
  module UsersEndpoint

    include Swagger::Blocks
    extend ActiveSupport::Concern

    included do
      swagger_path '/api/v1/users' do
        operation :get do
          key :description, 'Provides a list of users in trailhead based on the search criteria'
          key :operationId, 'listUsers'
          key :produces, [
            'application/json'
          ]
          key :tags, [
            'user'
          ]
          response 200 do
            key :description, 'user list response'
            schema do
              key :type, :array
              items do
                key :'$ref', :User
              end
            end
          end
          response :default do
            key :description, 'unexpected error'
            schema do
              key :'$ref', :ErrorModel
            end
          end
        end
      end
    end

  end
end
