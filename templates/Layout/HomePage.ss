<% include Carousel %>
<div class="home-page">
    <div class="container">
        <div class="row">
            <section class="col-md-7 col-md-offset-1">
                <h1>$Title</h1>
                $Welcome
                <a href="$OnlineSubmissionPage.Link" class="home-submission-cta btn btn-primary btn-lg btn-block">$SubmissionCTAMessage</a>
                <div class="home-participate">
                    <p class="h3">$ParticipateMessage</p>
                    <ul>
                        <% loop $ParticipationMethods %>
                            <li>
                                <% if $RedirectionLink %>
                                    <a href="$RedirectionLink" <% if $RedirectionType == 'External' %>target="_blank"<% end_if %>>$Title</a>
                                <% else %>
                                    $Title
                                <% end_if %>
                            </li>
                        <% end_loop %>
                    <ul>
                </div>
                <div class="home-inquiry-languages bg-info">
                    $InquiryLangaugeOptions
                </div>
                <% if $Content.RichLinks %>
                    $Content.RichLinks
                <% else %>
                    $Content
                <% end_if %>
            </section>

            <aside class="col-md-3">
                <% include NewsSummary %>
            </aside>
        </div>
    </div>
</div>
<% include PageUtilities %>
