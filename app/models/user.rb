class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable

         has_many :books, dependent: :destroy
         has_one :profile, dependent: :destroy

         def admin?
           role == "admin"
         end

         def regular?
           role == "regular"
         end

         def guest?
           role == "guest"
         end
end
