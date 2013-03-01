function esFecha(fecha){


    dias= new Array(31,28,31,30,31,30,31,31,30,31,30,31);
    d=fecha.substr(0,2);
    m=fecha.substr(3, 2);
	longFecha=fecha.length;
    a=fecha.substr(6, longFecha);
    retorno = false;

    if((!isNaN(d)) && (!isNaN(m))&& (!isNaN(a)) ){

        if(a%4==0){
            dias[1]=29;

        }
		if(a.length==4 && a>0 && a<=3000){
			if((m>=1) && (m<=12)){

				 if(d>=1 && d<=dias[m-1]){

					 retorno=true;
				 }
			 }
		}
    }
return retorno;
}

// JavaScript Document
function esCI(cedula){


    retorno = false;

    if(cedula.length==11){

        if((cedula.charAt(1)==".")&& (cedula.charAt(5)==".") && (cedula.charAt(9)=="-")){


            if((!isNaN(cedula.charAt(0)))&& (!isNaN(cedula.charAt(10)))){

                nro1=cedula.substr(2,3);
                nro2=cedula.substr(6,3);
                if((!isNaN(nro1)) && (!isNaN(nro2))) {
                    retorno= true;
                }
            }
        }
    }
return retorno;

}

function esCorreo(correo){
    /*
     pos=indexOf(@)
si pos !-1 y pos<=length-5 y pos >=1 y pos>0
	algo=substring(pos+1, length)
	pospunto=algo.indexOf(".")
	si punto >1
     **/

    retorno=false;
    pos = correo.indexOf("@");
    if (pos != -1){
        if ((pos <= correo.length-5) && (pos >=1) && (pos > 0)){
            despArroba = correo.substring(pos+1,correo.length);
            posPunto = despArroba.indexOf('.');
            despPunto = despArroba.substring(posPunto+1, correo.length)
            if ((posPunto > 1)&& (despPunto.length > 1)){
                retorno=true;

            }

        }


    }

    return retorno;
}
