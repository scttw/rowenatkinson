<div class="podcast">
<h2>$PodcastTitle</h2>
$Description
<p><a href="$iTunesLink">Open in iTunes</a></p>

<% control PodcastList %>
	<div class="episode">
		<h3><a href="$Audio.AbsoluteURL">$EpisodeTitle - $Artist</a></h3>
		<p>$Summary</p>
		<p>$Date.Long - $Audio.getSize $Audio.getFileType</p>
	</div>
<% end_control %>
</div>