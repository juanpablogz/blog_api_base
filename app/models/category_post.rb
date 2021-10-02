# == Schema Information
#
# Table name: category_posts
#
#  id          :bigint           not null, primary key
#  category_id :bigint           not null
#  post_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_category_posts_on_category_id  (category_id)
#  index_category_posts_on_post_id      (post_id)
#
class CategoryPost < ApplicationRecord
  belongs_to :category
  belongs_to :post
end
