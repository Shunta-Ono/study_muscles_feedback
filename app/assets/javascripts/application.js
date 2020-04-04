// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require summernote/summernote-bs4.min
//= require summernote-init
//= require activestorage
//= require_tree .


$(function() {
  $('.previewble').on('change', function(e) {
    // previewbleクラスのファイルが変更されイベントが発火
    var $input = $(this);
    // 変更された要素を$(this)で取得し、inputに代入
    var file = e.target.files[0];
    // eの中に画像が入っている
    var fileReader = new FileReader();
    fileReader.onload = function() {
      // fileleaderが読み込まれたイベントが発火
      var dataUri = this.result;
      // srcでdataurlを表示
      $input.next(".preview").find("img").attr('src', dataUri);
    }
    fileReader.readAsDataURL(file);
  });
});

$(document).ready(function () {
  $("#theTarget").skippr({
      // スライドショーの変化 ("fade" or "slide")
      transition : 'slide',
      // 変化に係る時間(ミリ秒)
      speed : 1000,
      // easingの種類
      easing : 'easeOutQuart',
      // ナビゲーションの形("block" or "bubble")
      navType : 'block',
      // 子要素の種類("div" or "img")
      childrenElementType : 'div',
      // ナビゲーション矢印の表示(trueで表示)
      arrows : true,
      // スライドショーの自動再生(falseで自動再生なし)
      autoPlay : true,
      // 自動再生時のスライド切替間隔(ミリ秒)
      autoPlayDuration : 3000,
      // キーボードの矢印キーによるスライド送りの設定(trueで有効)
      keyboardOnAlways : true,
      // 一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
      hidePrevious : false
    });
});

$(function() {
  // タブをクリックしたら発火
  $('.tab li').click(function() {
    // クリックされたタブの順番を変数に格納
    var index = $('.tab li').index(this);
    // クリック済みタブのデザインを設定したcssのクラスを一旦削除
    $('.tab li').removeClass('active');
    // クリックされたタブにクリック済みデザインを適用する
    $(this).addClass('active');
    // コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
    $('.area ul').removeClass('show').eq(index).addClass('show');
  });
});