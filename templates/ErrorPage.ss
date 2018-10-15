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
    </head>
    <body class="$ClassName">
        <main id="main" class="main">
            <div class="container">
                <div class="row">
                    <section class="col-md-10 col-md-offset-1">
                        <div class="page-header">
                            <h1>$Title</h1>
                        </div>
                    </section>
                </div>
                <div class="row">
                    <section class="col-md-7 col-md-offset-1">
                        <% if $Content.RichLinks %>
                            $Content.RichLinks
                        <% else %>
                            $Content
                        <% end_if %>
                    </section>
                </div>
            </div>
        </main>

        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <script src="{$ThemeDir}/dist/js/main.js"></script>
        <script src="$ThemeDir(watea)/dist/js/main.js"></script>
    </body>
</html>
