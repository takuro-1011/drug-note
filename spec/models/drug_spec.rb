require 'rails_helper'

RSpec.describe Drug, type: :model do
  before do
    @drug = FactoryBot.build(:drug)
  end
  describe "お薬情報入力" do
    context "保存がうまくいく時" do
      it "drug_name,hospital,effect,day_id,image,capa_idがあれば保存できる" do
        expect(@drug).to be_valid
      end
    end
    context "保存がうまく行かない時" do
      it "drug_nameが空だと登録できない" do
        @drug.drug_name = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include("薬剤名を入力してください")
      end

      it "hospitalが空だと登録できない" do
        @drug.hospital = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include ("病院名を入力してください")
      end

      it "effectが空だと登録できない" do
        @drug.effect = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include ("薬剤の効果を入力してください")
      end

      it "day_idが空だと登録できない" do
        @drug.day_id = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include ("処方日を入力してください")
      end

      it "capa_idが空だと保存できない" do
        @drug.capa_id = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include ("用量を入力してください")
      end
      it "imageが空だと登録できない" do
        @drug.image = nil
        @drug.valid?
        expect(@drug.errors.full_messages).to include ("薬剤の画像を入力してください")
      end
    end
  end
end