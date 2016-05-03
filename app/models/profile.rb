class Profile < ActiveRecord::Base
  def selected_option_ids
    selected_options.to_a
  end
end
