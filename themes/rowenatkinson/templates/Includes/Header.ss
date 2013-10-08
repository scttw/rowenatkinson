<div id="header" role="banner">
	<div id="headerimg">
		<div><a href="$BaseHref"><img src="{$ThemeDir}/imgs/logo.gif" width="640" height="74" alt="Rowen Atkinson Photography" /></a></div><!-- end  -->
		<h1><a href="<?php echo get_option('home'); ?>/">$SiteConfig.Title</a></h1>
		<div class="description"><?php bloginfo('Tagline'); ?></div>
	</div>
	<div id="topnav"><ul>
		           <% control Menu(1) %>
		              <li class="$LinkingMode <% if $First %>first<% end_if %><% if $Children %> dropdown<% end_if %>"><a class="$LinkingMode<% if $Children %> dropdown-toggle" data-toggle="dropdown<% end_if %>" href="$Link">$MenuTitle<% if $Children %> <span class="caret"></span><% end_if %> </a>
		                <% if $Children %>
		                <% if ClassName != HomePage %>
		                  <ul class="dropdown-menu">
		                    <% include TopbarMenu %>
		                  </ul>
		                <% end_if %>
		                <% end_if %>
		              </li>
		           <% end_control %>
</ul></div>
<div class="breaker"></div>
</div>
