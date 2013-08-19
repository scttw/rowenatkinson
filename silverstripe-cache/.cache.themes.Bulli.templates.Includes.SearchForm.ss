<?php
$val .= '    <form ';

$val .= $scope->XML_val('FormAttributes', null, true);
$val .= ' class="form-search">
        <label for="SearchForm_SearchForm_Search" accesskey="s">Site search</label>
        <input type="text" placeholder="site search..." name="Search" value="" id="SearchForm_SearchForm_Search" class="input-small search-query" />
        <input type="submit" name="action_results" value="Go" class="action btn" id="SearchForm_SearchForm_action_results" />
    </form>

';

