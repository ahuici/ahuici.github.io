const añadirPersona = function(){
    let texto = document.createElement("input");
    texto.setAttribute("type","text");
    texto.setAttribute("id","texto");
    texto.style.marginLeft = "10px";

    let dinero = document.createElement("input");
    dinero.setAttribute("type","number");
    dinero.setAttribute("id","dinero");
    dinero.setAttribute("placeholder","0 €");
    dinero.style.marginLeft = "10px";

    let peso = document.createElement("input");
    peso.setAttribute("type","number");
    peso.setAttribute("value","1");
    peso.setAttribute("id","peso");
    peso.style.marginLeft = "10px";
    peso.style.marginBottom = "10px";

    let recuadroAñadir = document.getElementById("recuadroAñadir");
    recuadroAñadir.appendChild(texto);
    recuadroAñadir.appendChild(dinero);
    recuadroAñadir.appendChild(peso);
}

window.addEventListener("load", function () {

    let numero = 5;
    // while (true){
    //     numero = this.window.prompt("¿De cuántas personas sera la factura?");
    //     // Validar que sea un número positivo
    //     numero = Number(numero);
    //     if (isNaN(numero) || numero <= 0) {
    //         alert("Por favor, introduce un número válido de personas.");
    //     }
    
    //     // Limita la cantidad 
    //     else if (numero > 50) {
    //         alert("Número demasiado grande. Solo se permiten hasta 50 personas.");
    //     }

    //     else break;
    // }
    
    for (let i = 0; i < numero; i++) {
        añadirPersona();
    }

    let btnAyuda = this.document.createElement("button");
    let txtAyuda = this.document.createTextNode("Ayuda");
    btnAyuda.appendChild(txtAyuda);
    btnAyuda.setAttribute("class","button-17");
    btnAyuda.setAttribute("role","button");
    btnAyuda.setAttribute("id","btnAyuda");
    btnAyuda.addEventListener("click",function(){
        location.href = "Ayuda/ayuda50-50.html"
    })

    let btnCalc = this.document.createElement("button");
    let txtCalc= this.document.createTextNode("Calcular");
    btnCalc.appendChild(txtCalc);
    btnCalc.setAttribute("class","button-17");
    btnCalc.setAttribute("role","button");
    btnCalc.setAttribute("id","btnCalc");
    btnCalc.addEventListener("click",function(){

    })

    let lblPagar = this.document.createElement("label");
    let txtPagar = this.document.createTextNode("Total a pagar: ");
    lblPagar.appendChild(txtPagar);
    let inpPagar = this.document.createElement("input");
    inpPagar.setAttribute("type","number");
    inpPagar.setAttribute("id","pagar");
    inpPagar.setAttribute("placeholder","0€");


    this.document.getElementById("recuadroAñadir").appendChild(this.document.createElement("br"));
    this.document.getElementById("recuadroAñadir").appendChild(this.document.createElement("br"));
    this.document.getElementById("recuadroAñadir").appendChild(lblPagar);
    this.document.getElementById("recuadroAñadir").appendChild(inpPagar);
    this.document.getElementById("recuadroAñadir").appendChild(this.document.createElement("br"));
    this.document.getElementById("recuadroAñadir").appendChild(this.document.createElement("br"));
    this.document.getElementById("recuadroAñadir").appendChild(btnCalc);
    this.document.getElementById("recuadroAñadir").appendChild(btnAyuda);
});