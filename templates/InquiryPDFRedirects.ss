<p class="h4">$Title</p>
<div class="resources">
    <% loop $Resources %>
        <span class="inquiry-resource">
            <% if $RedirectionLink %>
                <a href="$RedirectionLink" <% if $RedirectionType == 'External' %>target="_blank"<% end_if %>>$Title</a>
            <% else %>
                $Title
            <% end_if %>
        </span>
    <% end_loop %>
</div>
