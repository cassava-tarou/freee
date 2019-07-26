require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :image => "MyString",
      :search_id => "MyString"
    ))
  end
  
  
  
end