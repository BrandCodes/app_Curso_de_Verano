//var doc = new jsPDF();

//// We'll make our own renderer to skip this editor
//var specialElementHandlers = {
//    '#editor': function (element, renderer) {
//        return true;
//    }
//};

//// All units are in the set measurement for the document
//// This can be changed to "pt" (points), "mm" (Default), "cm", "in"
//doc.fromHTML($('#render_me').get(0), 15, 15, {
//    'width': 170,
//    'elementHandlers': specialElementHandlers
//});

//PDF de responsiva
function generarPDF() {
    var pdf = new jsPDF();

    var specialElementHandlers = {
        '#editor': function (element, renderer) {
            return true;
        }
    };
    pdf.fromHTML($("#Formato").get(0), 15, 15, {
        'width': 170,
        'elementHandlers': specialElementHandlers
    });
    $('#documento').prop('data', pdf.output("dataurlstring"));
}

//PDF de reglamento
function generarPDF2() {
    var pdf = new jsPDF();

    var specialElementHandlers = {
        '#editor': function (element, renderer) {
            return true;
        }
    };
    pdf.fromHTML($("#Formato2").get(0), 15, 15, {
        'width': 170,
        'elementHandlers': specialElementHandlers
    });
    $('#documento2').prop('data', pdf.output("dataurlstring"));
}