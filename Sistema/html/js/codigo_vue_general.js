new Vue({

    el:"#div",
    data:{
        diploma:0,
        nombre:"",
        apellido:"",
        se_apellido:null,
        cedula:"",
        estudiante:1,
        password:"",
        usuario:"",
        buscar_e:"",
        nombre_se:"",
        contenido:[{nombre:"eduardo",apellido:"berastegui",cedula:19929802,nivel:5,certificado:"yes"},{nombre:"eduardo",apellido:"berastegui",cedula:19929802,nivel:5,certificado:"yes"}]

    },
    methods:{

        guardar(){
           // if(this.nombre!="" & this.apellido!="" & this.cedula!="" & this.password!=""){
                var formData = new FormData();
                formData.append("action","guardar")
                formData.append("p_nombre",this.nombre);
                formData.append("s_nombre",this.nombre_se);
                formData.append("apellido",this.apellido);
                formData.append("s_apellido",this.se_apellido);
                formData.append("cedula",this.cedula);
                formData.append("usuario",this.usuario);
                formData.append("password",this.password);
                axios.post('../contenidos_re/php/login.php', formData)
                .then(function (response) {
                  console.log(response)
                  if(response==1){
                      alert("ingresa")
                  }
               
                })
           // }
        },
        buscar_estu(){
           this.buscar_e=2
           var formData = new FormData();
           formData.append("action","buscar");
           axios.post('../contenidos_re/php/login.php', formData)
           .then(function (response) {
             console.log(response)
           })
        },
        iniciar(){

        }
        
    }
    
})