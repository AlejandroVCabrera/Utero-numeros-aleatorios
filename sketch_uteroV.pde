/* Hola panita :* (es un beso, pero se ve raro con esta letra).
    Te comparto lo que pude resolver acerca de los números rándom sin repetir:
    Se trata de un objeto llamado intList, así lo puedes encontrar en la referencia
    para topar mejor cómo va. La forma en que funciona junto con el algoritmo acá es:
    
    1- Genera un listado de valores según el rango que le especificas (.fromRange()).
    2- Barajea/revuelve los valores enlistados en un orden aleatorio (.shuffle(this)).
    3- Reduce el "length" de la lista al número de valores que necesitamos mostrar
       para nuestro programa (.resize(cualquiernúmero)).
       Así, si nuestra lista era de 20 valores y la resizeamos a 10, tomará los primeros
       10 valores y excluirá el resto. Entonces de resultado tenemos 10 valores en orden
       aleatorio de esa lista, con lo cual no se repiten las palabras al mostrarse.
    4- Para mostrar las palabras, usamos .get() dentro de el otro .get() para brindarle
       al algoritmo un valor a buscar. Checa en el código, suena enredado, pero todo eso ya
       lo has visto y lo conoces ;)
*/

IntList baraja = IntList.fromRange(0, 19);    //Listado de 19 variables agrupadas para las palabras  //////////////////////////////////////////
IntList baraja_1 = IntList.fromRange(0, 15);    //Listado de 15 variables agrupadas para los conectores  ////////////////////////////////////


StringList palabras= new StringList();
StringList conectores = new StringList();
float []posa= new float[40];
float []posb= new float[40];
//float []tomarPalabras = new float[19];
//float []tomarConectores = new float[9];
boolean sobreTexto= false;
boolean posso= false;
float px, py;
int selector= -1;

void setup () {
  size (900, 800);

  palabras.append("cavidad"); //0
  palabras.append("útero");
  palabras.append("es");
  palabras.append("sí misma");
  palabras.append("exceso");
  palabras.append("lenguaje");
  palabras.append("localiza");
  palabras.append("decide");
  palabras.append("propio"); 
  palabras.append("flujo");
  palabras.append("teje");
  palabras.append("se desprende"); 
  palabras.append("acto");
  palabras.append("tímbrico");
  palabras.append("voz"); 
  palabras.append("no"); 
  palabras.append("puede"); 
  palabras.append("reducirse"); 
  palabras.append("información");  //18 (19 palabras en total)

  conectores.append("la "); //0
  conectores.append("del");
  conectores.append("por");
  conectores.append("el");
  conectores.append("del");
  conectores.append("que");
  conectores.append("no");
  conectores.append("se");
  conectores.append("y");  
  conectores.append("las");
  conectores.append("los");
  conectores.append("si");
  conectores.append("aunque");
  conectores.append("para");
  conectores.append("en");  //14 (15 conectores en total)


  textSize(15);

  for (int contador = 0; contador < posa.length; contador ++) {
    posa[contador] = random(100, 700);
    posb [contador] = random(100, 700);
  }
  
// REVOLTIJO Y REDUCCIÓN DE LA LISTA DE VALORES PARA BUSCAR LAS PALABRAS Y CONECTORES ////////////////////////////////////////////////  
  println(baraja); //te dejo estos println's para que cheques en la consola cómo funciona. Es medio fascinante. Este muestra la lista, su tamaño y orden.
  baraja.shuffle(this);  //barajea la IntList llamada baraja
  println(baraja); //este print te muestra la lista con el orden barajeado
  baraja.resize(10);  //reduce el tamaño de la IntList llamada baraja a 10 elementos (del 0 al 9)
  println(baraja + "\n"); //este print te muestra cómo queda la lista final, revuelta y acotada a 10 elementos.
  
  baraja_1.shuffle(this);
  baraja_1.resize(6);
  println(baraja_1); // este print te muestra el resultado del mismo proceso, pero con la Intlist llamada baraja_1 reducida a 6 elementos.
  
}

void draw() {
  background(0);
  fill(250);

//DIBUJO E INTERACCIONES DE 10 PALABRAS////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // es por 8, no por 15 
  if (mouseX > posa[0] && mouseX < (posa[0] +palabras.get(baraja.get(0)).length() * 8)&& // para obtener el valor de baraja: palabras.get(baraja.get(0))
    mouseY > (posb[0] -20) && mouseY <posb[0]) {
    sobreTexto = true;
    selector = 0;
  } else {
    sobreTexto = false;
  }
  text(palabras.get(baraja.get(0)), posa[0], posb[0]);

  if (mouseX >posa[1] && mouseX < (posa[1] +palabras.get(baraja.get(1)).length() * 8)&&
    mouseY > (posb[1] -20) && mouseY <posb[1]) {
    sobreTexto = true;
    selector = 1; //identifica el num de palabra
  }
  text(palabras.get(baraja.get(1)), posa[1], posb[1]);

  if (mouseX >posa[2] && mouseX < (posa[2] +palabras.get(baraja.get(2)).length() * 8)&&
    mouseY > (posb[2] -20) && mouseY <posb[2]) {
    sobreTexto = true;
    selector = 2;
  }
  text(palabras.get(baraja.get(2)), posa[2], posb[2]);

  if (mouseX>posa[3] && mouseX< (posa[3] + palabras.get(baraja.get(3)).length()* 8) &&
    mouseY >(posb[3] -20) && mouseY<posb[3]) {
    sobreTexto = true;
    selector = 3;
  }
  text(palabras.get(baraja.get(3)), posa[3], posb[3]);

  if (mouseX>posa[4] && mouseX< (posa[4] + palabras.get(baraja.get(4)).length()* 8) &&
    mouseY >(posb[4] -20) && mouseY<posb[4]) {
    sobreTexto = true;
    selector = 4;
  }
  text(palabras.get(baraja.get(4)), posa[4], posb[4]);

  if (mouseX>posa[5] && mouseX< (posa[5] + palabras.get(baraja.get(5)).length()* 8) &&
    mouseY >(posb[5] -20) && mouseY<posb[5]) {
    sobreTexto = true;
    selector = 5;
  }
  text(palabras.get(baraja.get(5)), posa[5], posb[5]);

  if (mouseX>posa[6] && mouseX< (posa[6] + palabras.get(baraja.get(6)).length()* 8) &&
    mouseY >(posb[6] -20) && mouseY<posb[6]) {
    sobreTexto = true;
    selector = 6;
  }
  text(palabras.get(baraja.get(6)), posa[6], posb[6]);

  if (mouseX>posa[7] && mouseX< (posa[7] + palabras.get(baraja.get(7)).length()* 8) &&
    mouseY >(posb[7] -20) && mouseY<posb[7]) {
    sobreTexto = true;
    selector = 7;
  }
  text(palabras.get(baraja.get(7)), posa[7], posb[7]);

  if (mouseX>posa[8] && mouseX< (posa[8] + palabras.get(baraja.get(8)).length()* 8) &&
    mouseY >(posb[8] -20) && mouseY<posb[8]) {
    sobreTexto = true;
    selector = 8;
  }
  text(palabras.get(baraja.get(8)), posa[8], posb[8]);

  if (mouseX>posa[9] && mouseX< (posa[9] + palabras.get(baraja.get(9)).length()* 8) &&
    mouseY >(posb[9] -20) && mouseY<posb[9]) {
    sobreTexto = true;
    selector = 9;
  }
  text(palabras.get(baraja.get(9)), posa[9], posb[9]);

//DIBUJO E INTERACCIONES DE 6 CONECTORES////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (mouseX>posa[10] && mouseX< (posa[10] + conectores.get(baraja_1.get(0)).length()* 8) &&
   mouseY >(posb[10] -20) && mouseY<posb[10]) {
   sobreTexto = true;
   selector = 10;
   }
   text(conectores.get(baraja_1.get(0)), posa[10], posb[10]);
   
   if (mouseX>posa[11] && mouseX< (posa[11] + conectores.get(baraja_1.get(1)).length()* 8) &&
   mouseY >(posb[11] -20) && mouseY<posb[11]) {
   sobreTexto = true;
   selector = 11;
   }
   text(conectores.get(baraja_1.get(1)), posa[11], posb[11]);
   
   if (mouseX>posa[12] && mouseX< (posa[12] + conectores.get(baraja_1.get(2)).length()* 8) &&
   mouseY >(posb[12] -20) && mouseY<posb[12]) {
   sobreTexto = true;
   selector = 12;
   }
   text(conectores.get(baraja_1.get(2)), posa[12], posb[12]);
   
   if (mouseX>posa[13] && mouseX< (posa[13] + conectores.get(baraja_1.get(3)).length()* 8) &&
   mouseY >(posb[13] -20) && mouseY<posb[13]) {
   sobreTexto = true;
   selector = 13;
   }
   text(conectores.get(baraja_1.get(3)), posa[13], posb[13]);
   
   if (mouseX>posa[14] && mouseX< (posa[14] + conectores.get(baraja_1.get(4)).length()* 8) &&
   mouseY >(posb[14] -20) && mouseY<posb[14]) {
   sobreTexto = true;
   selector = 14;
   }
   text(conectores.get(baraja_1.get(4)), posa[14], posb[14]);
   
   if (mouseX>posa[15] && mouseX< (posa[15] + conectores.get(baraja_1.get(5)).length()* 8) &&
   mouseY >(posb[15] -20) && mouseY<posb[15]) {
   sobreTexto = true;
   selector = 15;
   }
   text(conectores.get(baraja_1.get(5)), posa[15], posb[15]);
   


  fill(50); //para el texto 
  quad (805, 720, 805, 750, 885, 750, 885, 720);
  fill(100);
  text("guardar", 815, 740);
}


void mousePressed() {

  if (mousePressed&&mouseX<880&&mouseX>820&&mouseY>720&&mouseY<750) {
    saveFrame("susurro####.jpg");
  }

  if (sobreTexto == true) {
    if (selector == 0) {
      px= mouseX -posa[0];
      py= mouseY -posb[0];
      posso = true;
    }

    if (selector == 1) {
      px= mouseX -posa[1];
      py= mouseY -posb[1];
      posso = true;
    }
    if (selector == 2) {
      px= mouseX -posa[2];
      py= mouseY -posb[2];
      posso = true;
    }
    if (selector == 3) {
      px= mouseX -posa[3];
      py= mouseY -posb[3];
      posso = true;
    }
    if (selector == 4) {
      px= mouseX -posa[4];
      py= mouseY -posb[4];
      posso = true;
    }
    if (selector == 5) {
      px= mouseX -posa[5];
      py= mouseY -posb[5];
      posso = true;
    }
    if (selector == 6) {
      px= mouseX -posa[6];
      py= mouseY -posb[6];
      posso = true;
    }
    if (selector == 7) {
      px= mouseX -posa[7];
      py= mouseY -posb[7];
      posso = true;
    }
    if (selector == 8) {
      px= mouseX -posa[8];
      py= mouseY -posb[8];
      posso = true;
    }
    if (selector == 9) {
      px= mouseX -posa[9];
      py= mouseY -posb[9];
      posso = true;
    }
    if (selector == 10) {
      px= mouseX -posa[10];
      py= mouseY -posb[10];
      posso = true;
    }
    if (selector == 11) {
      px= mouseX -posa[11];
      py= mouseY -posb[11];
      posso = true;
    }
    if (selector == 12) {
      px= mouseX -posa[12];
      py= mouseY -posb[12];
      posso = true;
    }
    if (selector == 13) {
      px= mouseX -posa[13];
      py= mouseY -posb[13];
      posso = true;
    }
    if (selector == 14) {
      px= mouseX -posa[14];
      py= mouseY -posb[14];
      posso = true;
    }
    if (selector == 15) {
      px= mouseX -posa[15];
      py= mouseY -posb[15];
      posso = true;
    }
    if (selector == 16) {
      px= mouseX -posa[16];
      py= mouseY -posb[16];
      posso = true;
    }
    if (selector == 17) {
      px= mouseX -posa[17];
      py= mouseY -posb[17];
      posso = true;
    }
    if (selector == 18) {
      px= mouseX -posa[18];
      py= mouseY -posb[18];
      posso = true;
    }
    if (selector == 19) {
      px= mouseX -posa[19];
      py= mouseY -posb[19];
      posso = true;
    }
    if (selector == 20) {
      px= mouseX -posa[20];
      py= mouseY -posb[20];
      posso = true;
    }
  }
}

void mouseDragged() {
  if (posso == true) {
    if (selector == 0) {
      posa[0] = mouseX -px;
      posb[0] = mouseY -py;
    }
    if (selector == 1) {
      posa[1] = mouseX -px;
      posb[1] = mouseY -py;
    }
    if (selector == 2) {
      posa[2] = mouseX -px;
      posb[2] = mouseY -py;
    }
    if (selector == 3) {
      posa[3] = mouseX -px;
      posb[3] = mouseY -py;
    }
    if (selector == 4) {
      posa[4] = mouseX -px;
      posb[4] = mouseY -py;
    }
    if (selector == 5) {
      posa[5] = mouseX -px;
      posb[5] = mouseY -py;
    }
    if (selector == 6) {
      posa[6] = mouseX -px;
      posb[6] = mouseY -py;
    }
    if (selector == 7) {
      posa[7] = mouseX -px;
      posb[7] = mouseY -py;
    }
    if (selector == 8) {
      posa[8] = mouseX -px;
      posb[8] = mouseY -py;
    }
    if (selector == 9) {
      posa[9] = mouseX -px;
      posb[9] = mouseY -py;
    }
    if (selector == 10) {
      posa[10] = mouseX -px;
      posb[10] = mouseY -py;
    }
    if (selector == 11) {
      posa[11] = mouseX -px;
      posb[11] = mouseY -py;
    }
    if (selector == 12) {
      posa[12] = mouseX -px;
      posb[12] = mouseY -py;
    }
    if (selector == 13) {
      posa[13] = mouseX -px;
      posb[13] = mouseY -py;
    }
    if (selector == 14) {
      posa[14] = mouseX -px;
      posb[14] = mouseY -py;
    }
    if (selector == 15) {
      posa[15] = mouseX -px;
      posb[15] = mouseY -py;
    }
    if (selector == 16) {
      posa[16] = mouseX -px;
      posb[16] = mouseY -py;
    }
    if (selector == 17) {
      posa[17] = mouseX -px;
      posb[17] = mouseY -py;
    }
    if (selector == 18) {
      posa[18] = mouseX -px;
      posb[18] = mouseY -py;
    }
    if (selector == 19) {
      posa[19] = mouseX -px;
      posb[19] = mouseY -py;
    }
    if (selector == 20) {
      posa[20] = mouseX -px;
      posb[20] = mouseY -py;
    }
  }
}

void mouseReleased() {
  posso = false;
}
