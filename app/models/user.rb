class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :number, uniqueness: true, :inclusion => 1111111111..9999999999, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." } 
  def set_random_number
  self.number = rand(1111111111..9999999999)
  end
        
end
