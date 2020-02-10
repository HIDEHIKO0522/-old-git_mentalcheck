class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :comments         
  has_many :checks, dependent: :destroy  #ユーザーがデータベースから削除されてしまった場合にユーザーがした投稿も全て消える     
end
