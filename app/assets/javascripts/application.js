// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){

    $('.featurette1, .stats1, .chart1').show();
    $('ul li a').click(function(){
      $('li').removeClass('active')
      $(this).parent().addClass('active')
        $cow = $(this).attr("class");
        $('.featurette, .stats, .chart').hide();
        $('.featurette' + $cow.slice(-1)).show();
        $('.stats' + $cow.slice(-1)).show();
        $('.chart' + $cow.slice(-1)).show();
    });

    // (function loop() {
    //     var rand = Math.round(Math.random() * (30000 - 5000)) + 5000;
    //     setTimeout(function() {
    //             loop();
    //             console.log(rand)
    //             $.ajax("/cows/random_calf_creator")
    //     }, rand);
    // }());

    $('#create-calf').on('click', function(e){
      e.preventDefault();
      console.log(e)

      var options = {
        url: "/cows/random_calf_creator",
        type: 'POST',
        success: function(){
          console.log("Qwerty")
        },
        error: function(){
          console.log("Grumpy Cat")
        }
      };
      $.ajax(options)
    });

    $('.cow-calf').on('click', function(e){
      e.preventDefault();
      var id = $(e.target).attr('id');
      var options = {
        url: "/cows/cow_calf_creator/" + id,
        type: 'POST',
        dataType: 'json',
        data: id,

        success: function(){
          console.log("Qwerty")
        },
        error: function(data){
          console.log("Grumpy Cat")
          console.log(data)
        }
      };
      $.ajax(options)
    });

});
