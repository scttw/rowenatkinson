			<div class="strap row-fluid">
                <% if $HasBanner %>
                    <div class="span12" style="margin-top: 20px;">$BannerContent</div>
                <% end_if %>
            </div>
            <div class="row-fluid">&nbsp;</div>
            <div class="row-fluid masonry">
					<% loop HomepageFeatures %>
                    <div class="<% if $FullWidth %>wide<% else %>narrow<% end_if %> feature">
                        <h2>$Title</h2>
                        <div class="content">
                            $Stuff
                        </div>
                    </div>                        
                    <% end_loop %>

                <div class="breaker"></div>
            </div>

