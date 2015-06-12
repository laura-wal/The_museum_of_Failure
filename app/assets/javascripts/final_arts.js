$(document).ready(function() {
  $.ajax({
    url: 'http://localhost:3000/',
    dataType: 'json'
  }).done(function(response) {
    console.log(response);
    // debugger;
    var FJS = FilterJS(response, '#final-arts', {
      template: '#final-art-template',
      search: {ele: '#searchBox', fields: ['tags.name']}
    });
  })
});

