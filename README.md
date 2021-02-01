# マッチングアプリ

### 男女の出会いの場、男女をつなぐ

<img width="1235" alt="33994b43a1a02ba353dc5422ae05b986" src="https://user-images.githubusercontent.com/75296964/106419319-9526f980-649b-11eb-98c9-91110b9c9d1b.png">

# 概要

### 人それぞれ出会いを求めて色々なマッチングアプリに登録していると思うがその1つ

# テスト用アカウント
- 男性用:userboy1@sample.co.jp
- 女性用:usergirl@sample.co.jp

# 利用方法

### 活動開始まで
#### 新規登録
https://gyazo.com/8addd41f2e6618c7a3fe12f5444d4575

#### プロフィール登録
<img width="1256" alt="f74a80bf4127025bdaac424b5698d91c" src="https://user-images.githubusercontent.com/75296964/106419942-f7ccc500-649c-11eb-8b87-3bd2024e1a3a.png">

https://gyazo.com/e85acba92b5dd3de4f373433d66d0e23

### 活動開始〜マッチングするまで
![4c67f45721f072d525074a47e95a4ef1](https://user-images.githubusercontent.com/75296964/106420784-b50bec80-649e-11eb-9f3f-a5e69f868dc3.jpg)

https://gyazo.com/b160b9974db5bd930c19b49c95a96ad2
https://gyazo.com/b2c19beb87163cd49fe15b752ef25787

### マッチング後
https://gyazo.com/87f67fa5a57d8ad275e0c368c12f957d

# 目指したい課題解決

### 1 全般的な課題
  Ruby on RailsはGive&Takeの関係にあるWebはできると思うが、最も儲かりそうなアプリは何か？

### 2 課題解決
|ユーザーストーリーから考える課題|解決策|
|:---|:---|
|相手の性別に違いがあったら困るという課題|ユーザー登録する際とプロフィール登録する際、性別を登録し、相違あったら活動できない|
|その人がどういう人なのか知りたいという課題|プロフィール詳細機能を作成する。|
|誰からいいねもらったのか知りたいという課題|マイページの下にいいねした人を表示|
|誰とマッチングしたか知りたい|マッチング成立一覧表示機能を作成する|
|マッチングした人とメッセージのやり取りをしたいという課題|有料会員のみマッチング後、メッセージの交換を可能にする|

# 実装した機能について

|機能|概要|
|:---|:---|
|ユーザー管理機能|新規登録・ログイン・ログアウトが可能|
|プロフィール作成機能|画像付きで登録可能|
|プロフィール一覧表示機能|プロフィールを一覧表示する機能|
|プロフィール詳細機能|ある会員のプロフィール詳細が閲覧可能|
|プロフィール削除機能|退会するで削除可能|
|プロフィール編集機能|プロフィール変更で編集可能|
|いいね投稿機能|良さそうだと思ったお相手にいいねを押す機能|
|マッチング成立一覧表示機能|お互いにいいねを押したらマッチングしたことになり、一覧に表示される機能|
|メッセージ機能|メッセージのやり取りをしたいお相手の名前が選択できる機能|
|メッセージ送信機能|マッチングしたもの同士でメッセージのやり取りができる機能|

# 実装予定の機能

- 条件でお相手を検索する機能
- ブロックする機能

# ローカルでの動作方法

- $ cd matching-33039
- $ bundle install
- $ rails db:create
- $ rails db:migrate
- $ rails s
- http://localhost:3000

# DB設計

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