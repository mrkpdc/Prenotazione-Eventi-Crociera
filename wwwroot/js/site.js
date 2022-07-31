function ajaxCallCreateUser(url) {
    var data = {};
    data.userName = document.querySelector("#InputUserName").value;
    data.email = document.querySelector("#InputEmail").value;
    data.password = document.querySelector("#InputPassword").value;
    data.confirmPassword = document.querySelector("#InputConfirmPassword").value;
    $.ajax({
        method: "POST",
        url: url,
        // contentType: "application/json; charset=utf-8",
        data: data,
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            document.getElementById("CreateUserModalBody").appendChild(textP);
            this.always();
        },
        error: function (error, status) {
            console.log(data);
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () { }
    });
};



