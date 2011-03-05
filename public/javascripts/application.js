(function($) {
    $(document).ready(function() {
    	$.initSearch();
    });

    $.updateWithSearchResults = function(resultHtml) {
    	
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
      		//$.search();
    	});
    };

    $.fn.memorySearch = function() {

    };
}(jQuery));