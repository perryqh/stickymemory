(function($) {
    $(document).ready(function() {
    	$.initSearch();
    });

    $.updateWithSearchResults = function(response) {
        var searchResult = response['search_result'];
        if(null != searchResult) {
            $('#home .search-results .header').html(searchResult['header']);
            $('#home .search-results .text').html(searchResult['text']);

            if(!$('#home .search-results').is(':visible')) {
              $('#home .search-results').show('slide', {direction: 'down'}, 1000);
            }
        }
    };

    $.isSearchAllowed = function() {
    	return true;	
    };

    $.search = function() {
    	if ($.isSearchAllowed()) {
        	var ajaxOptions = {
            type: 'get',
            url: $('.search-form #go').attr('data-url'),
            data: { search_text: $('.search-form #search-mem-txt').val() },
            success: function(htmlContent) {
               $.updateWithSearchResults(htmlContent);
            }
          };
          $.ajax(ajaxOptions);
    	}
    };

    $.initSearch = function() {
		$('.search-form #go').click(function() {
			$.search();
		});
		$('.search-form #search-mem-txt').everyTime(500, function(i) {
      		$.search();
    	});
    };

    $.fn.memorySearch = function() {

    };
}(jQuery));