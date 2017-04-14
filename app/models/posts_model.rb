class PostsModel < ApplicationRecord
  has_many :replies
  validates :title, presence: { message:"제목을 입력해주세요." }
end
