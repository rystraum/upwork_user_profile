class Option < ActiveRecord::Base
  has_many :child_options, class_name: "Option", foreign_key: :parent_option_id
  belongs_to :parent_option, class_name: "Option"

  def self.top_level
    where(parent_option_id: nil)
  end

  def top_level?
    parent_option_id.nil?
  end
end
