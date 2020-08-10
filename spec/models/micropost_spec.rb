require 'rails_helper'

RSpec.describe Micropost, type: :model do
  it 'contenとuser_idがどちらもある時'
    micropost = FactoryBot.build(:micropost)
    expect(micropost).to be_valid
  end

  it 'contentがない時／無効' do
    micropost = FactoryBot.build(:micropost, content:nil)
    micropost.valid?
    expect(micropost.errors[:content].to include("can't be blank")
  end

  it 'user_idが無い時／無効' do
    micropost = FactoryBot.build(:micropost, user_id: nil)
    micropost.valid?
    expect(micropost.errors[:user_id]).to include("can't be blank")
  end

  it 'contentとuser_idがどちらもない時／無効'
    micropost = FactoryBot.build(:micropost, content: nil, user_id: nil)
    micropost.valid?
    expect(micropost.errors[:content]).to include("can't be blank")
    expect(micropost.errors[:user_id]).to include("can't be blank")
  end

  it 'contentが140文字を超えた時／無効' do
    micropost = FactoryBot.build(:micropost, :over_140)
    micropost.valid?
    expect(micropost.errors[:content]).to include('is too long (maximum is 140 characters)')
  end

  it 'contentが140文字の時／有効' do
    micropost = FactoryBot.build(:micropost, :just_140)
    expect(micropost).to be_valid
  end

  it 'contentが140文字以内の時／有効' do
    micropost = FactoryBot.build(:micropost, :below_140)
    expect(micropost).to be_valid
  end
end