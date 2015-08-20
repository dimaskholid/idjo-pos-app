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
