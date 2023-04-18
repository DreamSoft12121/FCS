// function loadImage(url) {
//     return new Promise(resolve => {
//         const xhr = new XMLHttpRequest();
//         xhr.open('GET', url, true);
//         xhr.responseType = "blob";
//         xhr.onload = function (e) {
//             const reader = new FileReader();
//             reader.onload = function(event) {
//                 const res = event.target.result;
//                 resolve(res);
//             }
//             const file = this.response;
//             reader.readAsDataURL(file);
//         }
//         xhr.send();
//     });
// }

// let signaturePad = null;

// window.addEventListener('load', async () => {

//     const canvas = document.querySelector("canvas");
//     canvas.height = canvas.offsetHeight;
//     canvas.width = canvas.offsetWidth;

//     signaturePad = new SignaturePad(canvas, {});

//     const form = document.querySelector('#form');
//     form.addEventListener('submit', (e) => {
//         e.preventDefault();

//         let curso = document.getElementById('curso').value;
//         let nombres = document.getElementById('nombre').value;
//         let apellidos = document.getElementById('apellido').value;
//         let email = document.getElementById('email').value;
//         let direccion = document.getElementById('direccion').value;
//         let telefono = document.getElementById('telefono').value;
//         let hijos = document.querySelector('input[name="hijos"]:checked').value;
//         let numeroHijos = document.getElementById('numeroHijos').value;
//         let discapacidad = document.querySelector('input[name="discapacidad"]:checked').value;
//         let discapacidadDesc = document.getElementById('discapacidad-desc').value;

//         generatePDF(curso, nombres, apellidos, email, direccion, telefono, hijos, numeroHijos, discapacidad, discapacidadDesc);
//     })

// });

// async function generatePDF(curso, nombres, apellidos, email, direccion, telefono, hijos, numeroHijos, discapacidad, discapacidadDesc) {
//     const image = await loadImage("reqtran1024_1.jpg");
    
//     const signatureImage = signaturePad.toDataURL();

//     const pdf = new jsPDF('p', 'pt', 'letter');

//     pdf.addImage(image, 'PNG', 0, 0, 565, 792);
//     pdf.addImage(signatureImage, 'PNG', 200, 665, 300, 60);

//     pdf.setFontSize(12);
//     pdf.text(curso, 260, 125);



//     pdf.setFontSize(10);
//     pdf.text(nombres, 170, 213);
//     pdf.text(apellidos, 170, 200);
//     pdf.text(direccion, 170, 400);
//     pdf.text(telefono, 170, 456);
//     pdf.text(email, 170, 475);

//     pdf.setFillColor(0,0,0);

//     if (parseInt(hijos) === 0) {
//         pdf.circle(255, 374, 4, 'FD');
//     } else {
//         pdf.circle(190, 374, 4, 'FD');
//         pdf.text(numeroHijos.toString(), 355, 378);
//     }

//     if (parseInt(discapacidad) === 0) {
//         pdf.circle(285, 718, 4, 'FD');
//     } else {
//         pdf.circle(240, 718, 4, 'FD');
//         pdf.text(discapacidadDesc, 350, 720);
//     }

    
//         // Inicio de metodo fecha

//         const date = new Date();
//         pdf.text((date.getUTCDate() - 1 + " / ").toString(), 380, 155);
//         pdf.text((date.getUTCMonth() + 1 + " /").toString(), 400, 155);
//         pdf.text((date.getUTCFullYear()).toString(), 415, 155);
    
//         // Fin de metodo fecha


//     pdf.save("formulario " + date +".pdf");

// }




// codigo de a devis

//Desde aquino se toca
function loadImage(url) {
    return new Promise(resolve => {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', url, true);
        xhr.responseType = "blob";
        xhr.onload = function (e) {
            const reader = new FileReader();
            reader.onload = function(event) {
                const res = event.target.result;
                resolve(res);
            }
            const file = this.response;
            reader.readAsDataURL(file);
        }
        xhr.send();
    });
}

let signaturePad = null;

window.addEventListener('load', async () => {

    const canvas = document.querySelector("canvas");
    canvas.height = canvas.offsetHeight;
    canvas.width = canvas.offsetWidth;

    signaturePad = new SignaturePad(canvas, {});

    const form = document.querySelector('#form');
    form.addEventListener('submit', (e) => {
        e.preventDefault();
//Hasta aca no se toca

        let rss = document.getElementById('rss').value;
        let nom = document.getElementById('nom').value;
        let tel = document.getElementById('tel').value;
        let corre = document.getElementById('corre').value;
        let fechserv = document.getElementById('fechserv').value;
       
        let lugrec = document.getElementById('lugrec').value;
        let fechrec = document.getElementById('fechrec').value;
        let horarec = document.getElementById('horarec').value;
        let lugent = document.getElementById('lugent').value;
        let fechent = document.getElementById('fechent').value;
        let horaent = document.getElementById('horaent').value;

        //select

        let sqm = document.querySelector('input[name="sqm"]:checked').value;
        let trc = document.getElementById('trc').value;
        let tipserv = document.getElementById('tipserv').value;
        
        
        
        // canatidad y vokumen de carga
        //registro 1
        let tipcvc1 = document.getElementById('tipcvc-1').value;
        let cantcvc1 = document.getElementById('cantcvc-1').value;
        let altocvc1 = document.getElementById('altocvc-1').value;
        let anchocvc1 = document.getElementById('anchocvc-1').value;
        let largocvc1 = document.getElementById('largocvc-1').value;
        // regstro 2 
        let tipcvc2 = document.getElementById('tipcvc-2').value;
        let cantcvc2 = document.getElementById('cantcvc-2').value;
        let altocvc2 = document.getElementById('altocvc-2').value;
        let anchocvc2 = document.getElementById('anchocvc-2').value;
        let largocvc2 = document.getElementById('largocvc-2').value;
        // regstro 3
        let tipcvc3 = document.getElementById('tipcvc-3').value;
        let cantcvc3 = document.getElementById('cantcvc-3').value;
        let altocvc3 = document.getElementById('altocvc-3').value;
        let anchocvc3 = document.getElementById('anchocvc-3').value;
        let largocvc3 = document.getElementById('largocvc-3').value;
        // regstro 4
        let tipcvc4 = document.getElementById('tipcvc-4').value;
        let cantcvc4 = document.getElementById('cantcvc-4').value;
        let altocvc4 = document.getElementById('altocvc-4').value;
        let anchocvc4 = document.getElementById('anchocvc-4').value;
        let largocvc4 = document.getElementById('largocvc-4').value;
        // regstro 5
        let tipcvc5 = document.getElementById('tipcvc-5').value;
        let cantcvc5 = document.getElementById('cantcvc-5').value;
        let altocvc5 = document.getElementById('altocvc-5').value;
        let anchocvc5 = document.getElementById('anchocvc-5').value;
        let largocvc5 = document.getElementById('largocvc-5').value;
        // regstro 6
        let tipcvc6 = document.getElementById('tipcvc-6').value;
        let cantcvc6 = document.getElementById('cantcvc-6').value;
        let altocvc6 = document.getElementById('altocvc-6').value;
        let anchocvc6 = document.getElementById('anchocvc-6').value;
        let largocvc6 = document.getElementById('largocvc-6').value;
        //total
        let total = document.getElementById('totalcvc').value;

        generatePDF(rss, nom, tel, corre, fechserv, tipserv, lugrec, fechrec,
            horarec, lugent, fechent, horaent, sqm, trc, tipcvc1, cantcvc1, altocvc1,
             anchocvc1, largocvc1, tipcvc2, cantcvc2, altocvc2, anchocvc2, largocvc2,
            tipcvc3, cantcvc3, altocvc3, anchocvc3, largocvc3,
            tipcvc4, cantcvc4, altocvc4, anchocvc4, largocvc4,
            tipcvc5, cantcvc5, altocvc5, anchocvc5, largocvc5,
            tipcvc6, cantcvc6, altocvc6, anchocvc6, largocvc6, total);
    })

});

async function generatePDF(rss, nom, tel, corre, fechserv, tipserv, lugrec, fechrec,
    horarec, lugent, fechent, horaent, sqm, trc, tipcvc1, cantcvc1, altocvc1,
     anchocvc1, largocvc1, tipcvc2, cantcvc2, altocvc2, anchocvc2, largocvc2,
    tipcvc3, cantcvc3, altocvc3, anchocvc3, largocvc3,
    tipcvc4, cantcvc4, altocvc4, anchocvc4, largocvc4,
    tipcvc5, cantcvc5, altocvc5, anchocvc5, largocvc5,
    tipcvc6, cantcvc6, altocvc6, anchocvc6, largocvc6, total) {

    // Desde aqui no se toca codigo

    const image = await loadImage("reqtran1024_1.jpg");
    
    const signatureImage = signaturePad.toDataURL();

    const pdf = new jsPDF('p', 'pt', 'letter');

    pdf.addImage(image, 'PNG', 0, 0, 565, 792);
    pdf.addImage(signatureImage, 'PNG', 200, 665, 300, 60);

    // Hasta aca no se toca codigo
    pdf.setFontSize(7);
    pdf.text(lugrec, 180, 270); 
    pdf.text(lugent, 180, 290);   
    
    //1.Datos de contacto
    pdf.text(rss, 165, 125);
    pdf.setFontSize(10);
    pdf.text(nom, 165, 155);
    pdf.text(tel, 165, 190);
    pdf.text(corre, 380, 190);
    //2. Correo de contacto
    pdf.text(fechserv, 145, 245);    
    pdf.text(fechrec, 355, 270);
    pdf.text(horarec, 460, 270);
    pdf.text(fechent, 355, 290);
    pdf.text(horaent, 460, 290);
    
    pdf.setFontSize(12);    
    //registro 1 
    pdf.text(tipcvc1, 130, 399);
    pdf.text(cantcvc1, 195, 399);
    pdf.text(altocvc1, 260, 399);
    pdf.text(anchocvc1, 325, 399);
    pdf.text(largocvc1, 390, 399);
    //registro 2
    pdf.text(tipcvc2, 130, 419);
    pdf.text(cantcvc2, 195, 419);
    pdf.text(altocvc2, 260, 419);
    pdf.text(anchocvc2, 325, 419);
    pdf.text(largocvc2, 390, 419);
    //registro 3
    
    pdf.text(tipcvc3, 130, 439);
    pdf.text(cantcvc3, 195, 439);
    pdf.text(altocvc3, 260, 439);
    pdf.text(anchocvc3, 325, 439);
    pdf.text(largocvc3, 390, 439);
    //registro 4
    pdf.text(tipcvc4, 130, 458);
    pdf.text(cantcvc4, 195, 458);
    pdf.text(altocvc4, 260, 458);
    pdf.text(anchocvc4, 325, 458);
    pdf.text(largocvc4, 390, 458);
    //registro 5
    pdf.text(tipcvc5, 130, 477);
    pdf.text(cantcvc5, 195, 477);
    pdf.text(altocvc5, 260, 477);
    pdf.text(anchocvc5, 325, 477);
    pdf.text(largocvc5, 390, 477);
    //registro 6
    pdf.text(tipcvc6, 130, 497);
    pdf.text(cantcvc6, 195, 497);
    pdf.text(altocvc6, 260, 497);
    pdf.text(anchocvc6, 325, 497);
    pdf.text(largocvc6, 390, 497);

    pdf.setFontSize(7);
    pdf.text(total, 455, 512);
    
    

    //pdf.setFillColor(0,0,0);

    // if (parseInt(hijos) === 0) {
    //     pdf.circle(255, 374, 4, 'FD');
    // } else {
    //     pdf.circle(190, 374, 4, 'FD');
    //     pdf.text(numeroHijos.toString(), 355, 378);
    // }

    // if (parseInt(discapacidad) === 0) {
    //     pdf.circle(285, 718, 4, 'FD');
    // } else {
    //     pdf.circle(240, 718, 4, 'FD');
    //     pdf.text(discapacidadDesc, 350, 720);
    // }

    // if (parseInt(trc) === 0) {
    //     pdf.circle(285, 718, 4, 'FD');
    // } else {
    //     pdf.circle(240, 718, 4, 'FD');
    // }
    //TIPO DE SERVICIO
    //LOCAL
    if(parseInt(tipserv) === 1){
        pdf.circle(437, 230, 6, 'FD');
    }
    //FORANEO 
    if(parseInt(tipserv) === 2){
        pdf.circle(437, 250, 6, 'FD')
    }
    //SQM
    //NO
    if(parseInt(sqm) === 0){
        pdf.circle(423, 312, 6, 'FD');
    }
    //SI 
    if(parseInt(sqm) === 1){
        pdf.circle(262, 312, 6, 'FD')
    }
    //TRC
    //SELECCIONAR OPC
    if(parseInt(trc) === 0){
        pdf.circle(0, 0, 0, 'FD');
    }
    //2C A 8C
    if(parseInt(trc) === 1){
        pdf.circle(155, 342, 6, 'FD');
    }
    //20C A 25C  
    if(parseInt(trc) === 2){
        pdf.circle(245, 342, 6, 'FD');
    } 
    // MENOR A 30C
    if(parseInt(trc) === 3){
        pdf.circle(337, 342, 6, 'FD');
    }
    //OTRA-NINGUNA
    if(parseInt(trc) === 4){
        pdf.circle(425, 342, 6, 'FD');
    }

    // switch (trc){
    //     case 1:
    //         pdf.circle(140, 310, 4, 'FD');
    //         break;
    //     case 2:
    //         pdf.circle(360, 310, 4, 'FD');
    //         break;
    //     case 3:
    //         pdf.circle(460, 310, 4, 'FD');
    //         break;        
    // }
        // Inicio de metodo fecha

        const date = new Date();
        pdf.text((date.getUTCDate() - 1 + " / ").toString(), 380, 155);
        pdf.text((date.getUTCMonth() + 1 + " /").toString(), 400, 155);
        pdf.text((date.getUTCFullYear()).toString(), 415, 155);
    
        // Fin de metodo fecha


    pdf.save("formulario " + date +".pdf");

}