
            <div class="row-fluid masonry">
					<% loop HomepageFeatures %>
                    <div class="<% if $FullWidth %>wide<% else %>narrow<% end_if %> feature">
                        <h2>$Title</h2>
                        <div class="content">
                            $Feature
                        </div>
                    </div>                        
                    <% end_loop %>

                <div class="breaker"></div>
            </div>

