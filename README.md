# README

## usersテーブル

| Column           | Type         | Options              |
| ---------------- | ------------ | -------------------- |
| email            | string       | null:false           |
| nickname         | string       | null:false           |
| password         | string       | null:false           |
<!-- | prefecture       | integer      | null:false           |
| municipality     | string       | null:false           | -->
<!-- *実装段階で上記を追加する可能性あり -->

### Association

- has_many :comments
- has_many :contributions

## boardテーブル

| Column           | Type         | Options                      |
| ---------------- | ------------ | ---------------------------- |
| building_name    | string       | null:false                   |
| prefecture       | integer      | null:false                   |
| municipality     | string       | null:false                   |
| good_points      | text         |                              |
| bad_points       | text         |                              |
| question         | text         |                              |
| user             | references   | null:false,foreign_key :true |
### Association

- belongs_to :user
- has_many :comments

## commentテーブル

| Column           | Type         | Options                      |
| ---------------- | ------------ | ---------------------------- |
| text             | text         | null:false                   |
| user             | references   | null:false, foreign_key: true|
| contribution     | references   | null:false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :contribution