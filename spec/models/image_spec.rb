require 'rails_helper'

describe Image do
  it { should validate_presence_of :title }
  it { should belong_to :user }
  it { should have_many :tagged_users }
  it { should have_many :tags }
end
