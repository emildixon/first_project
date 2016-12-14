require 'rails_helper'

describe User do
  
  it "is not valid" do
    expect(User.new(email: "test")).not_to be_valid
  end

end