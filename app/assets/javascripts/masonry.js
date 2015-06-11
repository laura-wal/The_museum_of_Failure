$(function(){
  var imgLoad = imagesLoaded($('.grid'));
  var $container = $('.grid');
  imgLoad.on( 'done', function(instance) {
    console.log('DONE  - all images have been successfully loaded');
    $container.masonry({
      itemSelector: '.final-image'
    });
    $('.final-image-content p').slabText();
    // $.each($container, function(index, image) {
    //   $(image).find('.final-image-content p').slabText();
    // })
  });
});


