Rowen = function () {};
Rowen.gallery = function () {};

Rowen.gallery.gallerySwitcher = function () {
	$("#wrapper .gallery li").click( function () {
		if ($(this).hasClass("feature")) {
			$(this).find('a').colorbox({transition:"elastic", maxWidth:"80%", maxHeight:"80%", initialWidth:"75%", initialHeight:"75%", title: 'Rowen Atkinson Photography', close: 'Close this photo'});
		}  else {
			var copy_from = $(this).clone(true);
			var copy_to = $('#wrapper .gallery li.feature').clone(true);
			$(copy_from).addClass('feature');
			$(copy_to).removeClass('feature');
			$('#wrapper .gallery li.feature').fadeOut('fast', function () { $(this).removeClass('feature').replaceWith(copy_from).fadeIn('fast'); });
			$(this).fadeOut('fast', function () { $(this).replaceWith(copy_to).addClass('feature').fadeIn('fast') });
			return false;
		}
	});
};

Rowen.gallery.init = function () {
  Rowen.gallery.gallerySwitcher();
};

$(document).ready(Rowen.gallery.init);