// Stampa prenotazioni user, gestita l'eventualità di più click sul bottone
$('#prenotazioniUser').one('click', function () {
    $.ajax({
        method: "GET",
        url: "/api/API/ListaPrenotazioni",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            console.log(data)
            data.forEach(element => {
                document.querySelector('#resultDivUserPage').innerHTML += `
                    <tr>
                        <td>${element.codPrenotazione}</td>
                        <td>${element.codUtente}</td>
                        <td>${element.codReplica}</td>
                        <td>${element.quantita}</td>
                    </tr>
                `
            });
        },
        error: function (error, status) {
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () { }
    });
});