////////////////////////////////////////////////////////////
// Procedure: Models.degradaTodo(int, int, int, int, int) //
// Depends for: Models.valor(int, int, int)               //
// Function: Proceso que lee los valores de la pantalla   //
// en forma de bits y los interpreta y manda al proceso   //
// valor para que pueda ser procesado.                    //
//                                                        //
// 
degradaTodo(rojoNuevo,verdeNuevo,azulNuevo,velocidad,continuo){
  v += velocidad;
  var r = velocidad;
  for(var i = 0;i < 16;i++){
    if(i < 15 && spritesData != null){
      var coloresSprites = ((peek(0x820 + (i << 1))) << 8)|(peek(0x821 + (i << 1)));
      var rojoSprites = ((coloresSprites >> 10) & 0x1f);
      var verdeSprites = ((coloresSprites >> 5) & 0x1f);
      var azulSprites = (coloresSprites & 0x1f);
      setSpriteColor(i, valor(rojoSprites,v,rojoNuevo),
                        valor(verdeSprites,v,verdeNuevo),
                        valor(azulSprites,v,azulNuevo));
    }
    if(tilesData != null){
      var coloresTiles = ((peek(0x800 + (i << 1))) << 8)|(peek(0x801 + (i << 1)));
      var rojoTiles = ((coloresTiles >> 10) & 0x1f);
      var verdeTiles = ((coloresTiles >> 5) & 0x1f);
      var azulTiles = (coloresTiles & 0x1f);
      setTileColor(i, valor(rojoTiles,v,rojoNuevo),
                      valor(verdeTiles,v,verdeNuevo),
                      valor(azulTiles,v,azulNuevo));
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