/*---------------- Input Pengguna Baru -------------------*/
$("#frmInputPengguna").on("submit", function(event) {
    event.preventDefault();
    var pass = md5($("#inputPassword").val());
    var selectTxt = $("#selectGrup option:selected").text();
    var pgn = {
        nama: $("#inputNama").val(),
        username: $("#inputUsername").val(),
        password: pass,
        id_grup: $("#selectGrup").val()
    };
    var rowCount = $('#tabelBarang tbody tr').length;
    con.query('INSERT INTO pengguna SET ?', pgn, function(err, res) {
        if (err) throw err;
        console.log(res.insertId);
    });
    $("#frmInputBarang").trigger('reset');
    $("#tabelPengguna tbody").append(
        "<tr>" +
        "<td>" + parseInt(rowCount + 1) + "</td>" +
        "<td>" + pgn['nama'] + "</td>" +
        "<td>" + pgn['username'] + "</td>" +
        "<td>" + selectTxt + "</td>" +
        "<td>" +
        "<button type='button' class='btn btn-link btn-xs'> " + "<span class='glyphicon glyphicon-wrench'></span>" + "</button>" +
        "<button type='button' class='btn btn-link btn-xs'> " + "<span class='glyphicon glyphicon-trash'></span>" + "</button>" +
        "</td > " +
        "</tr>"
    );
});
