# README
# テーブル設計

## users テーブル

| Colum            | Type    | Options      |
| ---------------- | ------  | -----------  |
| name             | string  | null: false  |
| email            | string  | null: false  |
| encrypted_password | string  | null: false  |
| family_name      | string  | null: false  |
| last_name        | string  | null: false  |
| family_name_kana | string  | null: false  |
| last_name_kana   | string  | null: false  |
| phone_number     | integer | null: false  |
| allergy          | text    |

### Association

- has_many :drugs

## drugs テーブル

| Colum            | Type       | Options      |
| ---------------- | ---------- | -----------  |
| drug_name        | string     | null: false  |
| hospital         | string     | null: false  |
| effect           | text       | null: false  |
| day(処方日)       | integer    | null: false  |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user