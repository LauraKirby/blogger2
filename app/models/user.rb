class User < ActiveRecord::Base
	acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::Sha512
	end
	validates :email, presence: true
	has_many :posts, dependent: :destroy
end
