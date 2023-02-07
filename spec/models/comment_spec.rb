require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "コメントモデルが作成できる" do
    FactoryBot.create(:user)
    FactoryBot.create(:micropost)
    expect(FactoryBot.build(:comment)).to be_valid
  end
end
