////////////////////////////////////////////////////////////
// Procedure: Models.degradaTodo(int, int, int, int, int) //
//                                                        //
// Depends for: Repositories.coloresActualesTiles()       //
//              Repositories.coloresActualesSprites()     //
//              Repositories.isAssignedTilesData()        //
//              Repositories.isAssignedSpritesData()      //
//              Util.valorColorModifier(int, int, int)    //
//                                                        //
// Function: Proceso que modifica los colores de los      //
// tiles y/o sprites de tal manera que se vea un efecto   //
// de degradar la pantalla para el vbi().                 //
////////////////////////////////////////////////////////////

degradaTodo(rojoNuevo,verdeNuevo,azulNuevo,v,continuo){
  var coloresSprites = null;
  var coloresTiles = null;
  if(isAssignedSpritesData())
    coloresSprites = coloresActualesSprites();
  if(isAssignedTilesData())
    coloresTiles = coloresActualesTiles();
  for(var i = 0;i < 16;i++){
    if(i < 15 && coloresSprites != null){
      var rojoSprites = ((coloresSprites[i] >> 10) & 0x1f);
      var verdeSprites = ((coloresSprites[i] >> 5) & 0x1f);
      var azulSprites = (coloresSprites[i] & 0x1f);
      var arrColors = new array [3];
      if((var temp = valorColorModifier(rojoSprites,v,rojoNuevo)) == -1)
        arrColors[0] = rojoNuevo;
      else
        arrColors[0] = temp;
      if((var temp = valorColorModifier(verdeSprites,v,verdeNuevo)) == -1)
        arrColors[1] = verdeNuevo;
      else
        arrColors[1] = temp;
      if((var temp = valorColorModifier(azulSprites,v,azulNuevo)) == -1)
        arrColors[2] = azulNuevo;
      else
        arrColors[2] = temp;
      setSpriteColor(i, arrColors[0],
                        arrColors[1],
                        arrColors[2]);
    }
    if(coloresTiles != null){
      var rojoTiles = ((coloresTiles[i] >> 10) & 0x1f);
      var verdeTiles = ((coloresTiles[i] >> 5) & 0x1f);
      var azulTiles = (coloresTiles[i] & 0x1f);
      var arrColors = new array [3];
      arrColors[0] = valorColorModifier(rojoSprites,v,rojoNuevo);
      arrColors[1] = valorColorModifier(verdeSprites,v,verdeNuevo);
      arrColors[2] = valorColorModifier(azulSprites,v,azulNuevo);
      setTileColor(i, arrColors[0],
                      arrColors[1],
                      arrColors[2]);
    }
  }
  if (v > 36){
    v = 0;
    return true;
  }else{
    if (continuo){
      return false;
    }
  }
}