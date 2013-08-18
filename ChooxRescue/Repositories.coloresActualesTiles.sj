////////////////////////////////////////////////////////////
// Procedure: coloresActualesTiles()                      //
// Depends for: N/A                                       //
// Function: Proceso que lee los valores de los colores   //
// de los tiles actuales.                                 //
////////////////////////////////////////////////////////////

coloresActualesTiles(){
  var arr = new array [16];
  for(var i = 0; i < length(arr); i++)
    arr[i]=((peek(0x820 + (i << 1))) << 8)|(peek(0x801 + (i << 1)));
  return arr;
}