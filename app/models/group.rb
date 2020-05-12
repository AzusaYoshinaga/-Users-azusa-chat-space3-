class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  validates :name, presence: true, uniqueness: true
end


# バリデーションは、正しいデータだけをデータベースに保存するために行われます。
# presenceメソッドはオブジェクトが存在すればそのオブジェクトを返し、オブジェクトが存在しなければnilを返すメソッドとなります。