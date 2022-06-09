# README

## 開発言語
* Ruby version: 3.0.1
* Rails 6.0.3

## 実行手順
* $ git clone git@github.com:Roatgithub/go_to_kintai.git
* $ cd go_to_kintai
* $ bundle install
* $ rails db:create
* $ rails db:migrate
* $ rails db:seed
* $ rails s

## [カタログ設計](https://docs.google.com/spreadsheets/d/19C4jYQUHvcWNoEyrdknT5TROB1Ckb6VGghVAAy_JXpE/edit?usp=sharing)

## [テーブル定義](https://docs.google.com/spreadsheets/d/19C4jYQUHvcWNoEyrdknT5TROB1Ckb6VGghVAAy_JXpE/edit?usp=sharing)

## ワイヤーフレーム
![goto_kintai_wireflame](https://user-images.githubusercontent.com/103027606/172109315-031ab7dd-5b1c-4c3a-ac9c-611640d5fcfb.png)


## ER図
![go_to_kintai_ER](https://user-images.githubusercontent.com/103027606/172109219-d250df5b-1d5a-4b33-b9ce-a9b2a15ef13e.png)


## 画面遷移図
![go_to_kintai_screen](https://user-images.githubusercontent.com/103027606/172109287-6dde2812-d8b3-46c5-938b-8fe27397c50c.png)


## 管理者ユーザ (user1)
* company: 123
* name: user1
* Email: user1kintai@sample.com
* PW: password

## 一般ユーザ (user2-5)
* company: 123
* name: user(2~5)
* Email: user(2~5)kintai@sample.com
* PW: password