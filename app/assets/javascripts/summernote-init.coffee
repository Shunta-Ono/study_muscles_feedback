$(window).load ->
  $('[data-provider="summernote"]').each ->
    $(this).summernote
      height: 300
      placeholder: '例）咀嚼筋の覚え方
      <br>【校則は無いがいい】
      <br>コウ・・・・・・(1)咬筋
      <br>ソク（は）・・・(2)側頭筋
      <br>ナイ・・・・・・(3)内側翼突筋
      <br>ガイ（い）・・・(4)外側翼突筋'