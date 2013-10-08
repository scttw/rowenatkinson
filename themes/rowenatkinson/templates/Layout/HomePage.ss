<div class="gallery" id="post-7">
<h2 style="margin-top: 0;">$Title</h2>
<div class="entry2">
$Content
	<ul>
    <% loop HomeImages.Limit(10) %>
            <li<% if First %> class="feature"<% end_if %>>
            <% control Image.SetRatioSize(1200,1200) %><a href="$URL"><br/><% end_control %>
            <% control Image.croppedImage(140,140) %><img class="sm" src="$URL" height="$height" width="$width" style="margin-top: -{$halfHeight($height)}px; margin-left: -{$halfWidth($width)}px;" alt="Rowen Atkinson Photography"/><br/><% end_control %>
            <% control Image.SetRatioSize(460,460) %><img class="md" height="$height" src="$URL" width="$width" style="margin-top: -{$halfHeight($height)}px; margin-left: -{$halfWidth($width)}px;" alt="Rowen Atkinson Photography"/><br/><% end_control %>
            </a></li>
    <% end_loop %>
    </ul>
$EndText
                <div class="breaker"></div>
            </div>
</div>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script src="{$ThemeDir}/javascript/colorbox.min.js" type="text/javascript"></script>
<script src="{$ThemeDir}/javascript/gallery.jq.js" type="text/javascript"></script>
