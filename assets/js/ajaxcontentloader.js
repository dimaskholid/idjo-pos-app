$(document).on("click", "ul.navbar-nav li ul li a,a.kasir, a.navbar-brand", function(e) {
    e.preventDefault();
    var url = $(this).attr("href");

    loadContentData(url);
});

function loadContentData(url) {
    $.ajax({
        type: "GET",
        url: url,
        success: function(data) {
            var content = $(data).find("#content-loader");
            //$("#content-wrapper").fadeOut().empty();
            $("#content-wrapper").fadeOut().empty().fadeIn().append(content);
        },
        error: function(data) {

        }
    });
};
