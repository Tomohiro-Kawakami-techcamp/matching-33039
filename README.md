# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ----------------   | -------- | ----------- |
| name               | string   | null: false |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| sex_id             | integer  | null: false |

### Association
- has_one  :profile
- has_many :votes

## profiles テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| nickname               | string     | null: false                    |
| hobby                  | string     | null: false                    |
| birthday               | string     | null: false                    |
| salary                 | integer    | null: false                    |
| info                   | string     | null: false                    |
| birth_id               | integer    | null: false                    |
| school_id              | integer    | null: false                    |
| sex_id                 | integer    | null: false                    |
| smoke_id               | integer    | null: false                    |
| marry_id               | integer    | null: false                    |
| money_id               | integer    | null: false                    |
| occupation_id          | integer    | null: false                    |
| drink_id               | integer    | null: false                    |
| live_id                | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :messages
- has_many   :votes
- has_many   :thanks

## messages テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| comment                | text       | null: false                    |
| profile                | references | null: false                    |
| thank                  | references | null: false                    |

### Association

- belongs_to :thank
- belongs_to :profile

## votes テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| user                   | references | null: false, foreign_key: true |
| profile                | references | null: false, foreign_key: true |
| voted_profile_id       | integer    | null: false                    |

### Association

- belongs_to :user
- belongs_to :profile

## thanks テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| profile                | references | null: false, foreign_key: true |
| voted_profile_id       | integer    | null: false                    |

### Association

- belongs_to :profile