require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe '#create' do
    before do
      @profile = FactoryBot.build(:profile)
    end

    it "全て記入すれば登録できること" do
      expect(@profile).to be_valid
    end

    it "imageが空では登録できないこと" do
      @profile.image = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Image can't be blank")
    end

    it "nameが空では登録できないこと" do
      @profile.nickname = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Nickname can't be blank")
    end

    it "infoが空では登録できないこと" do
      @profile.info = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Info can't be blank")
    end

    it "hobbyが空では登録できないこと" do
      @profile.hobby = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Hobby can't be blank")
    end

    it "salaryが空では登録できないこと" do
      @profile.salary = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Salary can't be blank")
    end

    it "salaryが数字以外では登録できないこと" do
      @profile.salary = "abc"
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Salary Half-width number")
    end

    it "salaryが数字以外では登録できないこと" do
      @profile.salary = "５００"
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Salary Half-width number")
    end

    it "birth_idが未選択であれば登録できないこと" do
      @profile.birth_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Birth Select")
    end

    it "school_idが未選択であれば登録できないこと" do
      @profile.school_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("School Select")
    end

    it "sex_idが未選択であれば登録できないこと" do
      @profile.sex_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Sex Select")
    end

    it "smoke_idが未選択であれば登録できないこと" do
      @profile.smoke_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Smoke Select")
    end

    it "marry_idが未選択であれば登録できないこと" do
      @profile.marry_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Marry Select")
    end

    it "money_idが未選択であれば登録できないこと" do
      @profile.money_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Money Select")
    end

    it "occupation_idが未選択であれば登録できないこと" do
      @profile.occupation_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Occupation Select")
    end

    it "marry_idが未選択であれば登録できないこと" do
      @profile.drink_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Drink Select")
    end

    it "money_idが未選択であれば登録できないこと" do
      @profile.live_id = 0
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Live Select")
    end
  end
end
