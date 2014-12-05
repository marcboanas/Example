require 'spec_helper'
require 'rspec/its'

describe User, 'Validations' do
  it { should validate_uniqueness_of(:email) }
  it { should have_secure_password }
  it { should validate_presence_of(:email) }
  it { should ensure_length_of(:name).is_at_most(50) }
  it { should allow_value('marc@home.com', '123@123.com').
      for(:email) }
  it { should ensure_length_of(:password).is_at_least(6) }
  it { should validate_confirmation_of(:password) }
end