		<div id="content" class="widecolumn">
						<h2>$Title</h2>
						<div class="content">
					$Content
                    <% control getImagesFromFolder %>
                    <% control SetRatioSize(600,442) %> 
                        <div class="wide{$orientation}"><img src="$URL" alt="$Top.Title $Pos" width="$width" height="$height"></div>
                    <% end_control %>     
                    <% end_control %>
						$Form
						$CommentsForm
                </div>

            </div>
				<div id="sidebar" role="complementary">
                	<% include SideBar %>
                </div>
