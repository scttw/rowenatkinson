
    <div class="row-fluid">
        <div id="BlogContent" class="blogcontent typography span8 lefstedge">
	<% if SelectedTag %>
		<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
	<% else_if SelectedDate %>
		<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
	<% else_if SelectedAuthor %>
		<h3><% _t('VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
	<% end_if %>
	
	<% if BlogEntries %>
		<% loop BlogEntries %>
			<% include BlogSummary %>
		<% end_loop %>
	<% else %>
		<h2><% _t('NOENTRIES', 'There are no blog entries') %></h2>
	<% end_if %>
	
	<% include BlogPagination %>
	
	</div>
    <div class="span3 pull-right" style="margin-right: 20px;">
    	<% include BlogSideBar %>
    </div>
    <div class="breaker"></div>