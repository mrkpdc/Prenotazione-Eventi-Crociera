// Inserimento prenotazione
function ajaxCallPrenotazione(CodReplica) {
    var body = {};
    var IDpostiDaPrenotare = "#postiDaPrenotare-" + CodReplica;
    body.CodReplica = CodReplica;
    body.Quantita = document.querySelector(IDpostiDaPrenotare).value;
    $.ajax({
        method: "POST",
        url: "/api/API/InserisciPrenotazione",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "text",
        success: function (data, status) {
            console.log(body);
            console.log(data);
            console.log(status);
            this.always();
        },
        error: function (error, status) {
            console.log(body);
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () { }
    });
};
