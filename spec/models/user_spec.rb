require 'rails_helper'

#newアクションのテスト
RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  
  it "名前が空白の時エラーメッセージを返す" do 
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
  
  it "メールアドレスが空白の時エラーメッセージを返す" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  
    it "メールアドレスの独自性の確認" do
    user = User.create(
    name: "銀河",
    email: "unkoman@gmail.com",
    password: "******",
    image: "************",
    search_id: "******",
    )
    
    user = User.new(email: "unkoman@gmail.com" )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
  
  it "メールアドレスの有効出ない時エラーメッセージを返す" do
    user = User.new(email: "unko unko unko unko")
    user.valid?
    expect(user.errors[:email]).to include("is invalid")
  end
  
  it "パスワードが空白の時エラーメッセージを返す" do 
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
  
  it "パスワードが正しくない時エラーメッセージを返す" do
    user = User.new(password: "*****")
    user.valid?
    expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
  end
  it "IDが空白の時エラーメッセージを返す" do 
    user = User.new(search_id: nil)
    user.valid?
    expect(user.errors[:search_id]).to include("can't be blank")
  end
  
  it "idの独自性の確認" do
    user = User.create(
    name: "銀河",
    email: "example@emai.jp",
    password: "******",
    image: "************",
    search_id: "hogehogehoge",
    )
    
    user = User.new(search_id: "hogehogehoge")
    user.valid?
    expect(user.errors[:search_id]).to include("has already been taken")
  end
  
  it "内容が正しい時登録が正常に行われるか" do
    user = User.new(
      name: "銀河",
      email: "example@emai.jp",
      password: "******",
      image: "************",
      search_id: "********",
      )
    expect(user).to be_valid
  end
  
  
  it "searchメソッドが仕事してるか" do
    user = User.create(
      name: "銀河",
      email: "example@emai.jp",
      password: "******",
      image: "************",
      search_id: "01203439",
      )
    set_user = User.search("01203439")
    expect(set_user.name).to eq("銀河")
  end
    
  
  
end
