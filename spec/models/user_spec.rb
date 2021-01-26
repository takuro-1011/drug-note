require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe '新規登録/ユーザー情報' do
    context '新規登録がうまくいかないとき' do
      it 'nameが空だと登録できない' do
        @user.name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Name can't be blank"
      end

      it 'nameは漢字・平仮名・カタカナ以外では登録できない' do
        @user.name = 'test'
        @user.valid?
        expect(@user.errors.full_messages).to include "Name is invalid"
      end

      it 'name_kanaが空だと登録できない' do
        @user.name_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Name kana can't be blank"
      end

      it 'name_kanaは全角カタカナ以外では登録できない' do
        @user.name_kana = 'てすと'
        @user.valid?
        expect(@user.errors.full_messages).to include "Name kana is invalid"
      end

      it 'emailが空だと登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end

      it '重複したemailがある場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Email has already been taken'
      end

      it 'emailに@がないと登録できない' do
        @user.email = 'testcom'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end

      it 'phone_numberが空だと登録できない' do
        @user.phone_number = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number can't be blank"
      end

      it 'phone_numberに-があると購入できない' do
        @user.phone_number = '000-0000-0000'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Phone number is invalid'
      end

      it 'phone_numberが11桁以上だと購入できない' do
        @user.phone_number = '000000000000'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Phone number is invalid'
      end

      it "phone_numberが英数字混合だと購入できない" do 
        @user.phone_number = '000000000aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Phone number is invalid'
      end

      it 'birthdayが空だと登録できない' do
        @user.birthday = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Birthday can't be blank"
      end

      it 'passwordが空だと登録できない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it 'password_confirmationが空だと登録できない' do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '1234576'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'passwordが6文字以下であれば登録できない' do
        @user.password = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end

      it 'passwordは半角数字のみでは登録できない' do
        @user.password = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'passwordは半角英文字のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end
    context '新規登録がうまくいくとき' do
      it 'name,name_kana, email, phone_number, password, password_confirmation, birthdayが存在すれば登録できること' do
        expect(@user).to be_valid
      end
      
      it "allergyは空でも登録できる" do
        @user.allergy = nil
        expect(@user).to be_valid
      end
    end
  end
end
