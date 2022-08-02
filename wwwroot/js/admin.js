﻿// Stampa prenotazioni Admin, gestita l'eventualità di più click sul bottone
$('#prenotazioniAdmin').one('click', function () {
    $.ajax({
        method: "GET",
        url: "/api/API/ListaPrenotazioniAdmin",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            data.forEach(element => {
                document.querySelector('#listaPrenotazioni').innerHTML += `
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
