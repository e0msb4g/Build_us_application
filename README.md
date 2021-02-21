# アプリケーション概要

## アプリケーション名

### Build Us (ビルダス)


[![Image from Gyazo](https://i.gyazo.com/c7021af7740cd73960379d31de8ab473.jpg)](https://gyazo.com/c7021af7740cd73960379d31de8ab473)



## アプリケーションのコンセプト
「気になる物件があるけど、ウェブサイトに掲載されていないから、どんな部屋なのか分からない。」
「次の引越し先は、同じ建物にお子様がたくさんいる家庭がいないような部屋を借りたい。」
「管理が行き届いているマンションに引っ越したいけど、住んでる方に直接聞きづらいし・・。」

そんな新たな住居をお探しの方のお悩みをもとに開発した、不動産の情報を気軽に共有できるサービスです。

[![Image from Gyazo](https://i.gyazo.com/99a4c5cfa1e99ed3df5f37aab71104a5.jpg)](https://gyazo.com/99a4c5cfa1e99ed3df5f37aab71104a5)


## 作成した背景

不動産をお探しの方がより多くの選択肢から不動産をご検討いただき、そして人生における大きな決断の後押しをしたい、という考えと不動産会社の営業として働いた経験をもとに開発したサービスです。

# URL（デプロイ）

https://build-us.herokuapp.com/

トップページのヘッダーにある「ゲストログイン(閲覧用)」をクリックいただくと、ゲストユーザーとしてログインができます。

# 使用技術

・ HTML

・ CSS(SCSS)

・ JavaScript(jQuery)

・Ruby 2.6.5

・Ruby on Rails 6.0.0

・ Mysql

・ AWS
    ・EC2
    ・S3
    
・ Capistrano

・ Rubocop(コード整形）

・ Rspec(テスト)

・ Google Maps API
    ・GoogleMapsJavascript
    ・Geocoder


## 具体的な利用方法
## ①　ログイン
ヘッダーから「ゲストログイン」をクリック頂くとマイページに飛ぶことができます。新規登録や通常ログインも可能です。

## ②　掲示板投稿

### 掲示板は、不特定多数に向けて発信できます。また、自身が投稿した内容であれば編集・削除が可能でございます。

[![Image from Gyazo](https://i.gyazo.com/93ff984766aae00556ce141d729518c6.png)](https://gyazo.com/93ff984766aae00556ce141d729518c6)



## ③　掲示板一覧

### マイページの「掲示板を見にいく」のボタンから掲示板一覧ページに遷移することができます。一覧から目的の掲示板を探したい際は、検索機能を実装しておりますので、検索フォームからキーワードをご入力ください。

[![Image from Gyazo](https://i.gyazo.com/9bb2883df8b73533e8901662efd02f2d.png)](https://gyazo.com/9bb2883df8b73533e8901662efd02f2d)



## ④　掲示板詳細

### 掲示板に表示された「投稿詳細へ」から掲示板の詳細ページへ遷移することができます。詳細ページでは、ユーザーが任意で投稿した写真や、住所入力によるGoogleMAP等が表示されます。今後も継続して掲示板の情報を閲覧したい場合は「気になる！」のボタンをクリック頂けます。「気になる！」を行った掲示板はマイページに表示されます

[![Image from Gyazo](https://i.gyazo.com/a1ea2906c22339bb5625c22088c5d4c8.png)](https://gyazo.com/a1ea2906c22339bb5625c22088c5d4c8)

[![Image from Gyazo](https://i.gyazo.com/8c045486f8d93322339a173604673260.jpg)](https://gyazo.com/8c045486f8d93322339a173604673260)



## ⑤　コメント

### 掲示板の詳細ページの下部から掲示板に対するコメントを入力できます。掲示板が自分と関わり深い内容であれば情報を発信することができます。ログインしているユーザーであればどなたでもコメント可能です。

[![Image from Gyazo](https://i.gyazo.com/06773232fe253238072261b48c7b6ac4.png)](https://gyazo.com/06773232fe253238072261b48c7b6ac4)


## ⑥　ログアウト

### ログインしている状態であれば、どのページからもヘッダー部分からログアウトが可能です。「ログアウト」をクリックいただくことで、ログアウトします。

# 要件定義

## 要件定義をする上で目指したこと

不動産の売買、賃貸では情報格差によるトラブルも少なくありません。多くの判断材料をもとに決断ができるよう、「手軽に多くの情報を発信、取得できる」ということを念頭に要件定義を行いました。

## ①掲示板投稿機能

目的:情報の発信や、詳しい方の意見を聞けることを可能にすることで、多くの情報共有を可能にさせるため。

詳細:マンション等の集合住宅だけでなく、「戸建」や「地域」、「街並み」に焦点を当てた投稿ができるように記入フォームを作っております。また、掲示板の情報の信憑性を明示するために「参考になった！」を行う機能を取り入れようと考えております。画像の保存のためAWSのS3を採用しております。

## ②GoogleMAP表示機能

目的:掲示板の対象となる「不動産」、「地域」等の周辺状況をデバイス上から確認することを可能にするため。

詳細:掲示板の詳細ページから掲示板の対象となるエリアを確認可能です。GoogleMapsJavascriptのAPIを利用しております。より詳細の場所を住所から探せるようにGeocoder APIも利用しております。

## ③掲示板編集機能

目的:投稿ミスの修正や追記を可能にするため。

詳細:自分が投稿した掲示板の詳細ページでは、編集ボタンが現れるようにして編集ページに移れるようにします。

## ④掲示板削除機能

目的:掲示板に記述した質問が解決に至った際に、削除できるようにするため。

詳細:編集機能と同様、自身の掲示板の詳細ページから削除を行えます。

## ⑤コメント機能

目的:掲示板の質問対する対応や、掲示板の情報やコメントに対する指摘を行えるようにするため。

詳細:掲示板の詳細ページ下部より行えます。コメントをしたことがある掲示板をマイページに表示させる機能を検討中でございます。

## ⑥気になる!機能

目的:特定の掲示板を今後も継続してチェックしたいという要望に答えるため。

詳細:掲示板の詳細ページの「気になる！」をクリック頂くことで、マイページの「気になる！をした掲示板」欄に掲示板が追加されます。検索や一覧から探す手間を省くことができます。

## ⑦ユーザー管理機能

目的:ユーザーが行える権限の線引きを行い、サイトの安全性を図るため

詳細:ユーザー登録を行うことで、初めてコメント機能や掲示板投稿などの機能を行うことができます。
本来であれば、「ゲストユーザー」ではコメントや、掲示板投稿を行えない想定をしております。
（今回は、より多くの企業の皆様に、ストレスなく機能を試していただけるように、ゲストユーザーにも投稿やコメント機能を許可しております。）

## ⑧ゲストログイン機能

目的:気軽に掲示板を多くの方にご覧いただくため。

詳細:「掲示板の詳細」と「掲示板の一覧」、「掲示板の検索」のみ行えるユーザーとして実装しております。
（今回は、より多くの企業の皆様に、ストレスなく機能を試していただけるように、ゲストユーザーにも投稿やコメント機能を許可しております。）

## ⑨掲示板検索機能

目的:目的の掲示板を見つけやすくするため

詳細:掲示板一覧のページに検索フォームを用意しております。「タイトル」、「市区町村」、「建物名」の項目で検索がひっかかるように実装しております。

## ⑩レスポンシブウェブデザイン化

目的:多くのデバイスから、ストレスなくサイトをご覧いただくため。

詳細:スマートフォンからの閲覧でも、対応できるように作成しております。なお、スマートフォンはiPhone12を想定しております。それ以外の機種はデザインが崩れる可能性がございます。

今後、iPadなどにも対応できるように実装する予定です。

# 今後実装する予定の機能

## ①「参考になった！」機能

目的:掲示板の情報、コメントの情報を信憑性を明示させるため。
詳細:コメント、掲示板に対し評価できる機能です。情報の取捨選択をユーザーが行いやすくなることを想定しております。

## ②通報機能

目的:サービスの目的に沿っていない掲示板、ユーザーを排除しサイトの安全性を担保するため。
詳細:不適切な情報を継続的に発信する掲示板およびユーザーを通報、その後、管理者側で審査を行い、審査に伴った対応をする、といった流れを行う機能を実装予定です。



# DB設計

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
