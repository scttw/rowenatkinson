<!DOCTYPE html>
<html lang="$ContentLocale" class="no-js"> <!--<![endif]-->


    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        $MetaTags(false)
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>
        <link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/style.css" />
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
        <link rel="stylesheet" type="text/css" href="css/ie8.css" />
        <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
        <![endif]-->
  </head>
  <body class="<% if not $Menu(2) %> no-sidebar<% end_if %><% if $PageStyle %> $PageStyle<% end_if %><% if $HasBanner %> banner <% else %> no-banner <% end_if %>">

        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
<div id="page">
<% include Header %>
<div id="wrapper">

    $Layout

<div class="breaker"></div>
</div>
<% include Footer %>
</div><!-- page -->

    

</body>
</html>
