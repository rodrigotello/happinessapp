class Word < ActiveRecord::Base
  attr_accessible :color_id, :text, :user_id
  belongs_to :user
  belongs_to :color

  default_scope order: 'words.created_at DESC'
end
