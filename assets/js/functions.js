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
        alertify.log("Sukses menghapus data");
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
