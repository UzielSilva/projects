////////////////////////////////////////////////////////////
// Procedure: Utils.valorColorModifier()                  //
//                                                        //
// Depends for: N/A                                       //
//                                                        //
// Function: Proceso que modifica gradualmente un color   //
// y evalua si es posible asignar un modificador sin que  //
// rebase el objetivo, de lo contrario regresa -1.        //
////////////////////////////////////////////////////////////

valorColorModifier(intensidad,modificador,colorNuevo){
  if(intensidad < colorNuevo)
    if(intensidad + modificador <= colorNuevo)
      return intensidad + modificador;
    else return -1;
  if(intensidad > colorNuevo)
    if(intensidad - modificador >= colorNuevo)
      return intensidad - modificador;
    else return -1;
  return -1;
}