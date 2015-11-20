// //cek localStorage, ada isi atau tidak 
// //kalau ada isi, 
// //localStorage['nama'] = ""

// function login() {
//     //  $(".login").addClass("hide");

//     con.query("SELECT nama, username, grup_pengguna.grup_pengguna AS jabatan FROM pengguna JOIN grup_pengguna ON grup_pengguna.id_grup = pengguna.id_grup WHERE username = 'dimas'", function(err, rows) {
//         if (err) throw err;
//         localStorage['nama'] = rows[0].nama;
//         localStorage['username'] = rows[0].username;
//         localStorage['jabatan'] = rows[0].jabatan;
//         //alertify.alert(localStorage['nama'] + localStorage['username']);
//     });
// };


// //showLocal();

// function hide() {
//     $(".kasir") addClass('hide');
// }

// function showUser() {
//     if (localStorage['nama'] != "") {
//         $("#nama").text(localStorage['nama']);
//         $("#jabatan").text(localStorage['jabatan']);
//         //alert(localStorage['jabatan'])
//     } else {
//         $("#nama").text("");
//         $("#jabatan").text("");
//         //alert("nama kosong")
//     }
// }

function cekSession() {
    if (sessionStorage["nama"]) {
        window.location.href = 'index.html';
    } else {
        window.location.href = 'login.html';
    }

}
