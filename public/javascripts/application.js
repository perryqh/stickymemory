(function($) {
    $(document).ready(function() {
    	$.initSearch();
    });

    $.search = function() {
    	//ajax search
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