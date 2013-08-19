Bulli.homepage = function () {
	var featurecontainer = $('.masonry')[0];
	$(featurecontainer).masonry({
	  itemSelector: '.feature'
	});
}

$(window).ready(Bulli.homepage());
