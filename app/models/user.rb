class User < ActiveRecord::Base
  include Swagger::Blocks

  swagger_schema :User do
    key :required, [:id, :name]
    property :id do
      key :type, :integer
      key :format, :int64
    end
    property :name do
      key :type, :string
    end
    property :age do
      key :type, :integer
      key :format, :int64
    end
    property :location do
      key :type, :string
    end
  end
end
