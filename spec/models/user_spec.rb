require 'rails_helper'

RSpec.describe User, type: :model do

  it "email must be present" do
    user = build(:user, :with_nil_an_email)
    expect(user.save).to be_falsey
  end

  it "an email should be downcase before save" do
    user = build(:user, :with_mixing_capitalize_email)
    user.save
    expect(user.email).to eq("arief@gmail.com")
  end

  it "saving with valid an email" do
    user = build(:user, :with_valid_an_email)
    expect(user.save).to be_truthy
  end
end
