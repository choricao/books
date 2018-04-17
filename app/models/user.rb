class User < ApplicationRecord

  def self.build_from_github(auth_hash)
    return User.new(
      provider: auth_hash[:provide],
      uid: auth_hash[:uid],
      email: auth_hash[:info][:email],
      name: auth_hash[:info][:name]
    )
  end
end
