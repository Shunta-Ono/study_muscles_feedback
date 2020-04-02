# Study Muscles

## アプリの機能
・ログイン機能  
・画像投稿機能  
・ノート投稿機能  
・ブックマーク機能  
・ブックマーク一覧表示機能  
・ページネーション機能  
・筋肉、ノート検索機能  
・マイページタブ分け機能  

## 使用技術
Ruby2.5.7  
Ruby on Rails5.2.4  

## 使用Gem

devise(ログイン機能)  
refile(画像投稿機能)  
refile-mini-magick(画像調節機能)  
bootstrap-sass(bootstrapの使用)  
jquery-rails(jqueryの使用)  
kaminari(ページネーション機能)  
font-awesome-sass(fontawesomeの使用)  
summernote-rails(summer-note機能)  
pry-byebug(デバッグ)  

## フロントエンド
sass-rails(SASS)  
CSSフレームワーク(bootstrap-sass)  

## 本番環境
AWS(EC2,RDS,EIP)  

## データベース
MySQL  

## WEBサーバ
Nginx  

# アプリの使用方法
・筋肉の部位一覧からその部位の筋肉を探すことができます。

<部位一覧機能>
<img width="1185" alt="スクリーンショット 2020-04-02 16 17 08" src="https://user-images.githubusercontent.com/43511346/78220939-68155d80-74fd-11ea-8482-eeae96bbb98e.png">

<各筋肉の一覧画面>
<img width="1185" alt="スクリーンショット 2020-04-02 16 19 57" src="https://user-images.githubusercontent.com/43511346/78221144-ccd0b800-74fd-11ea-9eee-ed27a4de12c9.png">

・筋肉詳細画面で筋肉の動作前、動作後の動きを確認でき、各情報を確認できます。
<筋肉の詳細画面>
<img width="1185" alt="スクリーンショット 2020-04-02 16 23 31" src="https://user-images.githubusercontent.com/43511346/78221422-4d8fb400-74fe-11ea-9a52-eb07d3d2e81a.png">

・さらにページ筋肉詳細ページの下部からノートを作成できます。
<ノート作成画面>
<img width="1185" alt="スクリーンショット 2020-04-02 16 25 40" src="https://user-images.githubusercontent.com/43511346/78221579-99425d80-74fe-11ea-931d-fe310405382a.png">

・ノートの作成にはSummerNoteを使用しており、ユーザがまとめやすいように工夫しています。
<ノート画面>
<img width="1185" alt="スクリーンショット 2020-04-02 16 33 08" src="https://user-images.githubusercontent.com/43511346/78222135-a4e25400-74ff-11ea-8265-2f9424c73574.png">

・筋肉の一覧画面の検索ボックスで筋肉名を入力することでその筋肉を探すことができ、ノートの一覧画面の検索ボックスで筋肉名を入力することでその筋肉について書かれたノートの検索ができます。

<筋肉検索結果画面>
<img width="1185" alt="スクリーンショット 2020-04-02 16 29 30" src="https://user-images.githubusercontent.com/43511346/78221849-22599480-74ff-11ea-9bb7-6f8fd3daf575.png">

<ノート検索結果画面>
<img width="1185" alt="スクリーンショット 2020-04-02 16 29 57" src="https://user-images.githubusercontent.com/43511346/78221900-33a2a100-74ff-11ea-8101-fee7d2a215bb.png">









