function isValidNumber() {
    var number = document.getElementById("CardNumber").value;
    var regex = /^(?:4[0-9]{12}(?:[0-9]{3})?)$/;
    var number = regex.test(number);
    if (!number) {
        alert("Enter the valid  card number");
    }
}
function isValidSecurityCode() {
    var x = document.getElementById("SecurityCode");
    var regex = /^\d{3}$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Security code is invalid!")
    }
}
function isValidMonth() {
    var x = document.getElementById("month").value;
    if (x == "Choose") {
        x.focus();
        alert("Expiry Month is invalid!");
    }
}
function isValidYear() {
    var x = document.getElementById("years").value;
    if (x == "Choose") {
        x.focus();
        alert("Expiry Year is invalid!");
    }
}
function isValidName() {
    var x = document.getElementById("name");
    var regex = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Entered Name is Invalid");
    }
}
function isValidateFirstAddress() {
    var x = document.getElementById("FirstAddress");
    var regex = /^[a-zA-Z0-9\s,'-]*$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Address is invalid!");
    }
}
function isValidPlace() {
    var x = document.getElementById("Place");
    var regex = /^[A-Za-z]+$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Entered Place is invalid!");
    }
}
function isValidRegion() {
    var x = document.getElementById("Region");
    var regex = /^[A-Za-z]+$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Entered Region is invalid!");
    }
}
function isValidZipCode() {
    var x = document.getElementById("Code").value;
    var regex = /^\d{5}$/;
    if (!x.match(regex)) {
        x.focus();
        alert("Zip Code is invalid!");
    }
}
function isValidPhoneNumber() {
    var x = document.getElementById("PhoneNumber");
    var regex = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Phone number is invalid!");
    }
}
function isValidFax() {
    var x = document.getElementById("Fax");
    var regex = /^\+?[0-9]{6,}$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Fax number is invalid!");
    }
}
function isValidEmail() {
    var x = document.getElementById("Email");
    var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Email is invalid!");
    }
}
function isValidCountry() {
    var x = document.getElementById("country").selectedIndex;
    if (x === 0) {
        x.focus();
        alert("Country is invalid");
    }
}
function isValidTown() {
    var x = document.getElementById("txt-town");
    var regex = /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Town is invalid");
        x.value = null;
    }
}

function isValidRegion() {
    var x = document.getElementById("txt-region");
    var regex = /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Region is invalid!");
        x.value = null;
    }
}
