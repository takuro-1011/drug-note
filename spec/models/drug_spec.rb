require 'rails_helper'

RSpec.describe Drug, type: :model do
  before do
    @drug = FactoryBot.build(:drug)
  end
  describe "お薬情報入力" do
    context "保存がうまくいく時" do
      it "drug_name,hospital,effect,day_id,imageがあれば保存できる" do
        expect(@drug).to be_valid
      end
    end
    context "保存がうまく行かない時" do
      it "drug_nameが空だと登録できない" do
        @drug.drug_name = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include "Drug name can't be blank"
      end

      it "hospitalが空だと登録できない" do
        @drug.hospital = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include "Hospital can't be blank"
      end

      it "effectが空だと登録できない" do
        @drug.effect = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include "Effect can't be blank"
      end

      it "day_idが空だと登録できない" do
        @drug.day_id = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include "Day can't be blank"
      end
      it "imageが空だと登録できない" do
        @drug.image = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include "Image can't be blank"
      end
    end
  end
end