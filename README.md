# README

## usersテーブル

| Column           | Type         | Options                          |
| ---------------- | ------------ | --------------------             |
| email            | string       | null:false                       |
| nickname         | string       | null:false                       |
| password         | string       | null:false                       |
| like             | references   | null:false,foreign_key :true     |
| board            | references   | null:false,foreign_key :true     |
| comment          | references   | null:false,foreign_key :true     |
<!-- | prefecture       | integer      | null:false           |
| municipality     | string       | null:false           | -->
<!-- *実装段階で上記を追加する可能性あり -->

### Association

- has_many :comments
- has_many :boards
- has_many :likes

## boardsテーブル

| Column           | Type         | Options                          |
| ---------------- | ------------ | ----------------------------     |
| title            | string       | null:false                       |
| prefecture_id    | integer      | null:false                       |
| municipality     | string       | null:false                       |
| edaban           | string       |                                  |
| building_name    | string       |                                  |
| impressions      | text         | if question = nil, null:false    |
| question         | text         | if impression = nil, null:false  |
| comment          | references   | null:false,foreign_key :true     |
| user             | references   | null:false,foreign_key :true     |
| like             | references   | null:false,foreign_key :true     |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes


## commentsテーブル

| Column           | Type         | Options                      |
| ---------------- | ------------ | ---------------------------- |
| text             | text         | null:false                   |
| user             | references   | null:false, foreign_key: true|
| board            | references   | null:false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :board

## likesテーブル

| Column           | Type         | Options                      |
| ---------------- | ------------ | ---------------------------- |
| user             | references   | null:false, foreign_key: true|
| board            | references   | null:false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :board