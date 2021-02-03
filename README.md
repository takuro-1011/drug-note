# README
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


## アプリケーション名     
お薬手帳                                                                        
## アプリケーション概要  
ユーザー管理、お薬の管理ができる。近くの病院がgooglemapで見れる                         
## URL                
https://drug-note33014.herokuapp

## テスト用アカウント    
email:test7   pw:test777                                                      

## 利用方法            
処方されたお薬の管理を行う、家族のお薬もまとめて管理

新規登録、ログインをするとトップページに遷移
Markdown: ["ログイン"](https://gyazo.com/e90cd49b26632980c2fe7c99d4e592c9 "ログイン")
お薬登録ページに遷移し登録できる、マイページに登録内容の表示
Markdown: ["お薬登録ページに遷移"](https://gyazo.com/c90e1f226ca1d5e8dc8c0c4fe8636d86 "お薬登録ページに遷移")
お薬を登録するとマイページに登録内容が表示される
Markdown: ["お薬登録"](https://gyazo.com/4a76c253e80eb6c83f3a8cde47b8eee3 "お薬登録")
マイページのお薬内容の画像を押すとお薬詳細ページに遷移し、編集、削除ボタンがある
Markdown: ["お薬詳細"](https://gyazo.com/aa5842c67d7ea0035cb8ca15eab688db "お薬詳細")
サイドバーはカーソルを合わせるとアンダーバー表示、ユーザー名はカーソルを合わせるとプルダウン表示
Markdown: ["お薬詳細"](https://gyazo.com/542c0b2d72f23c8d4cbb3a163432daea "お薬詳細")
グーグルマップを押すと現在地のマップが表示される
Markdown: ["お薬詳細"](https://gyazo.com/6c0f1d321c513742c49b92b8bd9ca32a "お薬詳細")

## 目指した課題解決     
年齢層:年齢若者〜老人  
病院にいく際にお薬手帳を忘れてしまう方、家族のお薬手帳をまとめて管理している方 

## 機能一覧

|ユーザー管理機能       | 新規登録・ログイン・ログアウト・ユーザー情報編集が可能  |
|ユーザー詳細表示機能    | マイページでユーザー情報の閲覧が可能                 |
|お薬登録機能          | 画像付きお薬内容の登録が可能                        |
|お薬一覧表示機能       | マイページで登録したお薬一覧の閲覧が可能              |
|お薬詳細表示機能       | お薬の詳細がお薬詳細ページで閲覧が可能                |
|お薬情報編集・削除機能  | お薬登録情報の編集・削除が可能                      |
|googlemap表示機能     | 現在地のマップの閲覧可能                           |


## 実装予定の機能       
googlemapで近くの病院を検索できる機能追加予定
家族のお薬情報を一人のユーザーが管理する機能を追加予定

## ローカルでの操作方法
$ git clone https://github.com/takuro-1011/drug-note
$ cd drug-note
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉 http://localhost:3000

## 開発環境
Ruby / Ruby on Rails / Javascript / MySQL / GitHub / Heroku / Visual Studio Code /
