$(document).on('ready page:load',function() {

  $('#search-form').submit(function(event) {
    event.preventDefault();

    var searchValue = $('#search').val();

    $.ajax({
      url: '/projects?search=' + searchValue,
      type: 'GET',
      dataType: 'script'
    });
  });
});

  // $.getScript('/projects?search=' + searchValue);
  //     .done(function(data){
  //       console.log(data);
  //       $('#projects').html(data);
  //     });
  //   });
  // });
  
  
  // The code blow is a shorthand of the code above:

  //   $.getScript('/projects?search=' + searchValue);
  // });