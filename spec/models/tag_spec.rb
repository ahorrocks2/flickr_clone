require 'rails_helper'

describe Tag do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :image_id }
  it { should belong_to :tagged_user }
  it { should belong_to :tagged_image }
end
