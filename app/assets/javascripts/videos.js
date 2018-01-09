var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;

function onYouTubeIframeAPIReady(){


    player = new YT.Player('player', {
        height: '400',
        width: '100%',
        enablejsapi:1,
        videoId: '<%= @video.url%>',
        events : {
             'onReady': initialize,
            /*'onStateChange': onPlayerStateChange*/
        }
    });

}

function initialize(e){
      e.target.playVideo();

      clearInterval(time_update_interval);

      var time_update_interval = setInterval(function () {

          for (var i = 0; i < $('.testtime').size(); i++) {

                if($('.testtime').eq(i).attr('data-id')<=player.getCurrentTime()){

                      $('.testtime').eq(i).addClass('red').siblings().removeClass('red');

                      $('.cn_sub').eq(i).addClass('display-on').siblings().removeClass('display-on');

                }

          }


          if ($('#repeat_video_box_2').hasClass('repeat_video_box_2 mode-on')) {

               for (var i = 0; i < $('.testtime').size(); i++) {

                  if( $('.testtime').eq(i).hasClass('red')){

                     if ($('.testtime').eq(i).attr('data-end')<=player.getCurrentTime()) {

                         player.seekTo($('.testtime').eq(i).attr('data-id'),true);

                     }
                  }
               }
          }

      }, 1);


  }

  $(document).ready(function() {
    $('.testtime').click(function(){
          player.seekTo($(this).attr('data-id'),true);
    });
  })
