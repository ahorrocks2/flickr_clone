require 'rails_helper'

describe Tag do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :image_id }
end
