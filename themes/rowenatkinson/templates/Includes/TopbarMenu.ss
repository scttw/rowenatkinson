<%--Include SidebarMenu recursively --%>
<!-- topbar recursion-->
<% if $Children %>
	<% loop $Children %>
		<% if ClassName != HomePage %>
		<li class="$LinkingMode">
			<a href="$Link" class="$LinkingMode" title="Go to the $Title.XML page">
				<span class="text">$MenuTitle.XML</span>
			</a>
		</li>
		<% end_if %>
	<% end_loop %>
<% end_if %>
