<!doctype html>
<html class="no-js" lang="$ContentLocale">
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle.XML<% else %>$Title.XML<% end_if %> | $SiteConfig.Title.XML</title>
        $MetaTags(false)
        <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />
        <% if $RSSLink %>
        <link rel='alternate' type='application/rss+xml' title='RSS' href='$RSSLink'>
        <% end_if %>
        <link rel="stylesheet" href="$ThemeDir(watea)/dist/css/main.css">
        <% include Favicon %>
        <% if $SiteConfig.GTMCode %>
            <!-- Google Tag Manager -->
            <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','$SiteConfig.GTMCode');</script>
            <!-- End Google Tag Manager -->
        <% end_if %>
    </head>
    <body class="$ClassName">
        <header>
            <% include Header %>
            <% include MainNav %>
        </header>
        <main id="main" class="main">
            $Layout
        </main>
        <% include PageShowcase %>
        <footer class="footer-site">
            <% include Footer %>
        </footer>
        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <script src="{$ThemeDir}/dist/js/main.js"></script>
        <script src="$ThemeDir(watea)/dist/js/main.js"></script>
        <% if $SiteConfig.GACode %>
            <script>
                (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                ga('create', '$SiteConfig.GACode', 'auto');
                ga('send', 'pageview');
            </script>
        <% end_if %>
        <% if $SiteConfig.GTMCode %>
            <!-- Google Tag Manager (noscript) -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=$SiteConfig.GTMCode"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
            <!-- End Google Tag Manager (noscript) -->
        <% end_if %>
    </body>
</html>
