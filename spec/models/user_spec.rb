require 'rails_helper'

describe User do
  it { should validate_uniqueness_of :username }
  it { should have_many :images }
  it { should have_many :tags }
end
