		<div id="content" class="widecolumn">
						<h2>$Title</h2>
						<div class="content">
					$Content
                    <div class="galleryHolder">
                    <% control getChildGalleries %>
                        <div class="post-$ID thumb_archive">
                            <p>
                                <a href="$Link">
                                    <img <% control FeatureImage.croppedImage(290,193) %>src="$URL" width="$width" height="$height"<% end_control %> alt="$Title" class="attachment-archive-thumb" />
                                </a>
                            </p>
                            <h3 id="post-$ID">
                                <a href="$Link">
                                    $Title
                                </a>
                            </h3>
                        </div>
                    <% end_control %>
                   </div>
						$Form
						$CommentsForm
                </div>

            </div>
				<div id="sidebar" role="complementary">
                	<% include SideBar %>
                </div>
