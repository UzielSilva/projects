////////////////////////////////////////////////////////////
// Procedure: coloresActualesSprites()                    //
//                                                        //
// Depends for: N/A                                       //
//                                                        //
// Function: Proceso que lee los valores de los colores   //
// de los sprites actuales.                               //
////////////////////////////////////////////////////////////

coloresActualesSprites(){
  var arr = new array [15];
  for(var i = 0; i < length(arr); i++)
    arr[i]=((peek(0x820 + (i << 1))) << 8)|(peek(0x821 + (i << 1)));
  return arr;
}