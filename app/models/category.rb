# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_user_id  (user_id)
#
class Category < ApplicationRecord
  belongs_to :user
  has_many :category_posts, dependent: :restrict_with_exception
end
