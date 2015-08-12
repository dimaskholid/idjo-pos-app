/**
 * This tiny script just helps us demonstrate
 * what the various example callbacks are doing
 *  Example.show("Prompt dismissed");  
 */
var Example = (function() {
    "use strict";

    var elem,
        hideHandler,
        that = {};

    that.init = function(options) {
        elem = $(options.selector);
    };

    that.show = function(text) {
        clearTimeout(hideHandler);

        elem.find(".notif").html(text);
        elem.delay(200).fadeIn().delay(4000).fadeOut();
    };

    return that;
}());
