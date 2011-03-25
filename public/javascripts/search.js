
(function($) {
  $(document).ready(function() {
    $.initSearch();
  });

  $.updateWithSearchResults = function(response) {
    if($.matchesCurrentSearch(response)) {
      var searchResult = response['search_result'];
      if(null != searchResult) {
        $('#home .search-results .header').html(searchResult['header']);
        $('#home .search-results .text').html(searchResult['text']);

        if(!$('#home .search-results').is(':visible')) {
          $('#home .search-results').show('slide', {direction: 'down'}, 1000);
        }
      }
    }
  };

  $.isWestminsterSelected = function() {
    return $.getSearchCategory() == 'shorter';
  };

  $.matchesCurrentSearch = function(data) {
    return (typeof data != 'undefined') && $('#search-mem-txt').val() == data['search_mem_text'] && $.getSearchCategory() == data['search_category'];
  }

  $.getSearchCategory = function() {
    return $("input[name=search-category]:radio:checked").val();
  }

  var g_searchIsPending;
  var g_lastTickValues;

  $.updateLastTickValues = function() {
    if(typeof g_lastTickValues == "undefined") {
      g_lastTickValues = new Array();
    }
    g_lastTickValues['search_mem_text'] = $('#search-mem-txt').val();
    g_lastTickValues['search_category'] = $.getSearchCategory();
  }

  $.isSearchAllowed = function() {
    var allowed = false;
  
    if($.matchesCurrentSearch(g_lastTickValues)) {
      allowed = g_searchIsPending;
      g_searchIsPending = false;
    }
    else {
      $.updateLastTickValues();
      g_searchIsPending = true;
    }

    return allowed;
  };

  $.search = function() {
    if ($.isSearchAllowed()) {
      var ajaxOptions = {
        type: 'get',
        url: $('.search-form #go').attr('data-url'),
        data: { search_mem_text: $('.search-form #search-mem-txt').val(),
          search_category: $.getSearchCategory() },
        success: function(htmlContent) {
          $.updateWithSearchResults(htmlContent);
        }
      };
      $.ajax(ajaxOptions);
    }
  };

  $.initSearch = function() {
    $('.search-form input[type=radio]').click(function() {
      $.search();
    });
	  $('.search-form #go').click(function() {
	    $.search();
	   });
    $('.search-form #search-mem-txt').focus(function() {
      $(this).everyTime(500, function(i) {
        $.search();
      }); 
    });
    $('.search-form #search-mem-txt').blur(function() {
      $(this).stopTime();
    });
  };
}(jQuery));