require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#create' do
    before do
      @message = FactoryBot.build(:message)
    end

    it "メッセージを書けばやり取りできること" do
      expect(@message).to be_valid
    end

    it "コメントが空ではやり取りできないこと" do
      @message.comment = nil
      @message.valid?
      expect(@message.errors.full_messages).to include("Comment can't be blank")
    end
  end
end
