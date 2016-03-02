# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  bgcolor     :string(6)
#  bordercolor :string(6)
#  textcolor   :string(6)
#  font        :string(6)
#  created_at  :datetime
#  updated_at  :datetime
#

class Theme < ActiveRecord::Base

  DEFAULTS = {
    bgcolor: 'EEEEEE',
    bordercolor: '333333',
    textcolor: '333333'
  }

  after_initialize :default

private

  def default
    DEFAULTS.each do |key, value|
      self[key] ||= value
    end
  end

end
