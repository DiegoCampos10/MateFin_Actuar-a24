#Esta funcion realiza el cálculo y gráfica de la
#aproximación del numero e como argumento de entrada 

simulanumeroe=function(nTotal){
  #Creamos un objeto tipo data.frame con los cálculos del número e:
  #Creamos los objetos que serán insumos para el cálculo de VF:
  VA=1
  i=1
  t=1:nTotal
  #Creamos :
  tablanumeroe=data.frame (
    t=t,
    VF=VA*((1+(i/t))^t)
  )
  #Creamos un objeto tipo lista con la tabla  del número e y algunos otos objetos:
  objetolista1=list(
    tablaE=tablanumeroe,
    valorActual=VA,
    tasaInterés=i,
    periodosSimuldos=nTotal
  )
  #Ahora grafico los valores de la tabla del número e:
  
  plot(x=tablanumeroe$t,y=tablanumeroe$VF,type="l",
       col="red")
  return(objetolista1)
}