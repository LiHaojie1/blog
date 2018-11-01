# README
A basic blog program based on RoR including CRUD,second model,validation and refactoring.

Main branch is based on https://guides.rubyonrails.org/getting_started.html

Other branches is test for new features.

##slim導入
###slim導入
`Gemfile`に以下のコードを追加し、`bundle install`をする。
```bash
gem 'slim-rails'
```
###既存のerbをまとめて変える
`Gemfile`に以下のコードを追加し、`bundle install`をする。
```bash
gem 'html2slim'
```
コマンドラインで以下のコードをする。
```bash
for i in app/views/**/*.erb; do erb2slim $i ${i%erb}slim && rm $i;done
```
Waring for ***muilti-line*** transformation.