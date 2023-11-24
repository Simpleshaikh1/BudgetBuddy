# class User < ApplicationRecord
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
#   # Validations
#   validates :name, presence: true
#   # Associations
#   has_many :expenses, foreign_key: 'author_id', dependent: :destroy
#   has_many :categories, foreign_key: 'author_id', dependent: :destroy
# end


class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, foreign_key: 'author_id'
  has_many :expenses, foreign_key: 'author_id'

  validates :name, presence: true, length: { in: 3..25 }
end