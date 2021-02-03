# README
# テーブル設計

## users テーブル

| Colum            | Type    | Options      |
| ---------------- | ------  | -----------  |
| name             | string  | null: false  |
| name_kana        | string  | null: false  |
| email            | string  | null: false  |
| encrypted_password | string  | null: false  |
| phone_number     | integer | null: false  |
| allergy          | text    |
| birthday         |  date   | null: false|
| gender           | integer | null:false |
### Association

- has_many :drugs
- has_many :comments

## drugs テーブル

| Colum            | Type       | Options      |
| ---------------- | ---------- | -----------  |
| drug_name        | string     | null: false  |
| hospital         | string     | null: false  |
| effect           | text       | null: false  |
| day_id(処方日)    | date       | null: false  |
| capa_id(容量)     | integer    | null: false  |
| user             | references | null: false, |foreign_key: true |

### Association

- belongs_to :user
- has_many :comments


| Type        | Options                        |
| ----------  | ----------  | ------------------------------ |
