require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "コメントモデルが作成できる" do
    user = User.create(name: "Example User", email: "geeklounge@gmail.com")
    micropost = Micropost.create(content: "test", user_id: user.id)
    expect(FactoryBot.build(:comment)).to be_valid
  end
end
