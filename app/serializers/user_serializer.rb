class UserSerializer < ActiveModel::Serializer

  attributes :name, :age, :location, :dob

  def dob
    Time.now - age.years
  end

end
