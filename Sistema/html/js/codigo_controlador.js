
  
  var usuario= document.getElementById("usuario_")
  usuario.innerHTML= localStorage.getItem("usu")
  
  function iniciar(region){
      window.location="html/"+ region+ ".html"
  };

 /* var formData = new FormData();
    formData.append('text',usuario )
    axios.post('../php/createimage.php', formData)
    .then(function (response) {
        
      })*/

     var niveles=0; 
  if(niveles<1){
    var caribe= document.getElementById("de");
    caribe.style.background="rgb(221, 221, 221)"
  }



