## アプリケーション名
お薬手帳
## アプリケーション概要  
ユーザー管理、お薬の管理ができる。近くの病院がgooglemapで見れる
## URL
https://drug-note33014.herokuapp.com/

## テスト用アカウント
email:test9@com   pw:test999

## 利用方法

### 新規登録、ログインをするとトップページに遷移
[![Image from Gyazo](https://i.gyazo.com/e90cd49b26632980c2fe7c99d4e592c9.gif)](https://gyazo.com/e90cd49b26632980c2fe7c99d4e592c9)

-------------------------------------------------------------------------------------------------------------------------------------

### お薬登録ページに遷移し登録できる、マイページに登録内容の表示
[![Image from Gyazo](https://i.gyazo.com/79a0aab9036cd9581254d4962e9adde4.gif)](https://gyazo.com/79a0aab9036cd9581254d4962e9adde4)

-------------------------------------------------------------------------------------------------------------------------------------

### マイページのお薬内容の画像を押すとお薬詳細ページに遷移し、編集、削除ボタンがある
[![Image from Gyazo](https://i.gyazo.com/04739996bb1bbb5ebaf09acb347c20a9.gif)](https://gyazo.com/04739996bb1bbb5ebaf09acb347c20a9)

-------------------------------------------------------------------------------------------------------------------------------------

### お薬詳細ページの編集ボタンを押すとお薬編集ページに遷移
[![Image from Gyazo](https://i.gyazo.com/06d76b9a5c2f443bcb3d28f99f7fdac7.gif)](https://gyazo.com/06d76b9a5c2f443bcb3d28f99f7fdac7)

-------------------------------------------------------------------------------------------------------------------------------------

### お薬詳細ページの削除ボタンを押すとお薬を削除し、マイページに遷移
[![Image from Gyazo](https://i.gyazo.com/2c74042bc234b37516324d8ad95a85a5.gif)](https://gyazo.com/2c74042bc234b37516324d8ad95a85a5)

-------------------------------------------------------------------------------------------------------------------------------------

### サイドバーはカーソルを合わせるとアンダーバー表示、ユーザー名はカーソルを合わせるとプルダウン表示
[![Image from Gyazo](https://i.gyazo.com/3353db46b98c6d5529294e5b7d480562.gif)](https://gyazo.com/3353db46b98c6d5529294e5b7d480562)

-------------------------------------------------------------------------------------------------------------------------------------

### グーグルマップを押すと現在地のマップが表示(現在現在地取得で試行錯誤)
!["お薬詳細"](https://gyazo.com/6c0f1d321c513742c49b92b8bd9ca32a )

-------------------------------------------------------------------------------------------------------------------------------------

## 目指した課題解決     
・年齢層:年齢若者〜高年齢  
・病院にいく際にお薬手帳を忘れてしまう課題                        
・家族のお薬手帳の管理が大変という課題  
・高年齢の方もターゲットに入れているためなるべくみやすいビューの意識

## 機能一覧
| 機能 | 概要 |
| ---- | --- |
| ユーザー管理機能 | 新規登録・ログイン・ログアウト・ユーザー情報編集が可能 |
| ユーザー詳細表示機 | マイページでユーザー情報の閲覧が可能 |
| お薬登録機能 | 画像付きお薬内容の登録が可能 |
| お薬一覧表示機能 | マイページで登録したお薬一覧の閲覧が可能 |
| お薬詳細表示機能 | お薬の詳細がお薬詳細ページで閲覧が可能 |
| お薬情報編集・削除機能 | お薬登録情報の編集・削除が可能 |
| googlemap表示機能 | 現在地のマップの閲覧可能 |


## 実装予定の機能       
・googlemapで近くの病院を検索できる機能追加予定    
・家族のお薬情報を一人のユーザーが管理する機能を追加予定    
・スマホ用のビューの作成

## ローカルでの操作方法
$ git clone https://github.com/takuro-1011/drug-note

$ cd drug-note

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails s
👉 http://localhost:3000

## 開発環境
Ruby 2.6.5 / Ruby on Rails 6.0.0 / Javascript / MySQL 0.4.4 / GitHub / Heroku / Visual Studio Code /

# テーブル設計

## users テーブル

| Colum              | Type    | Options      |
| ----------------   | ------  | -----------  |
| name               | string  | null: false  |
| name_kana          | string  | null: false  |
| email              | string  | null: false  |
| encrypted_password | string  | null: false  |
| phone_number       | integer | null: false  |
| allergy            | text    |
| birthday           |  date   | null: false|
| gender             | integer | null:false |
### Association

- has_many :drugs
- has_many :comments

## drugs テーブル

| Colum            | Type       | Options      |
| ---------------- | ---------- | -----------  |
| drug_name        | string     | null: false  |
| hospital         | string     | null: false  |
| effect           | text       | null: false  |
| day_id           | date       | null: false  |
| capa_id          | integer    | null: false  |
| user             | references | null: false, |foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## users テーブル(複数の)

| Colum              | Type    | Options      |
| ----------------   | ------  | -----------  |
| name               | string  | null: false  |
| name_kana          | string  | null: false  |
| email              | string  | null: false  |
| encrypted_password | string  | null: false  |
| phone_number       | integer | null: false  |
| allergy            | text    |
| birthday           |  date   | null: false|
| gender             | integer | null:false |

