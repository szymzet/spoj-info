function setLanguages() {
    $.getJSON('/languages', function(data) {
        var options = [],
            option;

        $.each(data['languages'], function(i, pair) {
            option = ['<option value="', pair[1], '">',
                       pair[0], ' (', pair[1], ')</option>'].join('')
            options.push(option);
        });
        $('#languages').append(options.join("\n"));
    });
}

function attachFormEvent() {
    $('form').on('submit', function(event) {
        var problem_id = $('#problem').val(),
            lang = $("#languages option:selected").first().val(),
            route = '/problem/' + problem_id + '/lang/' + lang;

        $.getJSON(route, function(data) {
            console.log(data);
            alert(data['message'] || data['errors']);
        })

        event.preventDefault();
    });
}

$(document).ready(function() {
    'use strict';

    setLanguages();
    attachFormEvent();
});

