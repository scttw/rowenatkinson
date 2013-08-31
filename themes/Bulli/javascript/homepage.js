Bulli.homepage = function () {
	var featurecontainer = $('.masonry')[0];
	$(featurecontainer).masonry({
	  itemSelector: '.feature'
	});
	featurecontainer.layout();
}

$(window).ready(Bulli.homepage());
