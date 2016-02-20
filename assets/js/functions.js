function notif(data) {
    setTimeout(function() {
        alertify.set({
            delay: 2000
        });
        alertify.log(data);
    }, 1000);
}

function notifEdit() {
    setTimeout(function() {
        alertify.set({
            delay: 2000
        });
        alertify.log("Berhasil merubah data");
    }, 1000);
}

function notifInput() {
    setTimeout(function() {
        alertify.set({
            delay: 2000
        });
        alertify.log("Input data sukses");
    }, 1000);
}

function notifDelete() {
    setTimeout(function() {
        alertify.set({
            delay: 2000
        });
        alertify.log("Data berhasil dihapus");
    }, 1000);
}

/*------------ fokus input -------------*/
function focusInput(btn, input) {
    $(document).on("click", btn, function() {
        setTimeout(function() {
            $(input).focus();
        }, 500);
    });
}

/*-------------- numeral js ------------*/
// load a language
numeral.language('id', {
    delimiters: {
        thousands: '.',
        decimal: '.'
    },
    abbreviations: {
        thousand: 'k',
        million: 'm',
        billion: 'b',
        trillion: 't'
    },
    currency: {
        symbol: 'Rp'
    }
});

// switch between languages
numeral.language('id');

function formatCurrency(number) {
    numeral(number).format('0,0');
}

/*-------------- date ------------*/
function toJSONLocal(date) {
    var local = new Date(date);
    local.setMinutes(date.getMinutes() - date.getTimezoneOffset());
    return local.toJSON().slice(0, 10);
}

/*--------- reload --------------*/
function reload(link, time) {
    setTimeout(function() {
        $.ajax({
            type: "GET",
            url: link,
            success: function(data) {
                var content = $(data).find("#content-loader");
                $("#content-wrapper").fadeOut().empty().fadeIn().append(content);
            },
            error: function(data) {}
        });
    }, time);
}

//ambil param dari address bar ->> http://www.sitepoint.com/url-parameters-jquery/
$.urlParam = function(name) {
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    return results[1] || 0;
}


/*-------- updateStockDetail -----*/
function updateStockDetail(id, stock) {
    con.query("UPDATE stock_detail SET stock = '" + stock + "' WHERE id_stock_detail = '" + id + "'", function(err, rows) {
        if (err) throw err;
    });
}

/*----- Month ------*/
function setMonth(select) {
    var month = new Array();
    month[0] = "Januari";
    month[1] = "Februari";
    month[2] = "Maret";
    month[3] = "April";
    month[4] = "Mei";
    month[5] = "Juni";
    month[6] = "Juli";
    month[7] = "Agustus";
    month[8] = "September";
    month[9] = "Oktober";
    month[10] = "November";
    month[11] = "Desember";

    for (var i = 0; i < month.length; i++) {
        $(select).append(
            "<option value='" + i + "'>" + month[i] + "</option>"
        );
    }
    var curMonth = new Date();
    $(select).val(curMonth.getMonth());
    //alert(curMonth.getMonth());
}

/*----- Year ------*/
function setYear(selectYear) {
    var curYear = new Date();
    for (var i = curYear.getFullYear(); i >= 2003; i--) {
        $(selectYear).append(
            "<option value='" + i + "'>" + i + "</option>"
        );
    }
    $(selectYear).val(curYear.getFullYear());
}

function setDigitMonth(digit) {
    //jika digit == 1, maka ditambah 0
    if (digit.length == 1) {
        digit = '0' + digit;
    }
    return digit;
}

var tanggal = new Date();

/** accounting setting**/
accounting.settings = {
    currency: {
        symbol: "Rp. ", // default currency symbol is '$'
        format: "%s%v", // controls output: %s = symbol, %v = value/number (can be object: see below)
        decimal: ",", // decimal point separator
        thousand: ".", // thousands separator
        precision: 0 // decimal places
    },
    number: {
        precision: 0, // default precision on numbers is 0
        thousand: ".",
        decimal: ","
    }
}



































/*
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Toko IDJO</title>
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/msgBoxLight.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.min.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    <script src="assets/js/connect.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.confirm.min.js"></script>
    <script src="assets/js/ajaxcontentloader.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <!-- Add Jquery UI main JS and CSS files -->
    <link rel="stylesheet" href="assets/js/autocomplete/jquery-ui.css">
    <!-- <script src="assets/js/autocomplete/jquery.js"></script> -->
    <script src="assets/js/autocomplete/jquery-ui.js"></script>
    <script src="assets/js/jquery.msgBox.js"></script>
    <script src="assets/js/alertify.js"></script>
    <script src="assets/js/functions.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/alertify.core.css">
    <script>
    //maximize window
    onload = function() {
        nwin
            .show();
        nwin.maximize();
    }
    </script>



*/
