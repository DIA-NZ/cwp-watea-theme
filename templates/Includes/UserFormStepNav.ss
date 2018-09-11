<nav id="step-navigation" class="step-navigation">
    <ul class="step-buttons">
        <%-- If JavaScript is disabled multi-step forms are displayed as a single page
            so the 'prev' and 'next' button are not used. These buttons are made visible via JavaScript. --%>
        <li class="step-button-wrapper" aria-hidden="true" style="display:none;">
            <button class="btn btn-default step-button-prev"><%t EditableFormStep.STEP_PREV "Prev" %></button>
        </li>
        <li class="step-button-wrapper" aria-hidden="true" style="display:none;">
            <button class="btn btn-default step-button-next"><%t EditableFormStep.STEP_NEXT "Next" %></button>
        </li>
        <% if $Controller.EnableSaveIncomplete %>
        <li class="step-button-wrapper">
            $Actions.fieldByName('action_initiateSave')
        </li>
        <% end_if %>
        <% if $Actions %>
            <li class="step-button-wrapper Actions">
                <% loop $Actions %>
                    <% if $Name == 'action_initiateSave' %>
                    <% else %>
                        $Field
                    <% end_if %>
                <% end_loop %>
            </li>
        <% end_if %>
    </ul>
</nav>

test
