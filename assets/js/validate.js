$(function() {
    /*--------------- Pengguna / User -----------------------*/
    $("#frmInputPengguna").validate({
        rules: {
            inputNama: "required",
            inputUsername: {
                required: true,
                minlength: 3
            },
            inputPassword: {
                required: true,
                minlength: 5
            },
            confirmPassword: {
                required: true,
                minlength: 5,
                equalTo: "#inputPassword"
            },
            selectGrup: "required"
        },
        messages: {
            inputNama: "Tolong ketikkan Nama Pengguna",
            inputUsername: {
                required: "Tolong masukkan username",
                minlength: "Minimal 3 huruf"
            },
            inputPassword: {
                required: "Tolong masukkan password",
                minlength: "Minimal 5 huruf"
            },
            confirmPassword: {
                required: "Ulangi password",
                minlength: "Minimal 5 huruf",
                equalTo: "Password harus sama"
            }

        }
    });

});
/*------------------ validasi -------------*/
