////////////////////////////////////////////////////////////
// Procedure: colorActualSprite()                         //
//                                                        //
// Depends for: N/A                                       //
//                                                        //
// Function: Proceso que lee el valor del color de un     //
// slot de los tiles actuales.                            //
////////////////////////////////////////////////////////////

colorActualSprite(slot){
  return ((peek(0x820 + (slot << 1))) << 8)|(peek(0x821 + (slot << 1)));
}