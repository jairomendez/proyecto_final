
new Vue({
	  el:"main",
	  data:{	

	  		usuario_id:null,
	  		rusuario:null,
	  		rclave:null,

	  			usuario:[],

	  		institucion_id:null,
	  		institucion_nombre:null,
	  		institucion_mision:null,
	  		institucion_vision:null,
	  		institucion_filosofia:null,
	  		institucion_municipio:null,
	  		institucion_direccion:null,
	  	    

	  	   		instituciones:[],


	  	   	d_id:null,
	  	   	dg_d:null,
	  	   	dg_f:null,
	  	   	dg_p:null,
	  	   	dg_c:null,

	  	   		debilidades:[],

	  	   	f_id:null,
	  	   	fg_d:null,
	  	   	fg_f:null,
	  	   	fg_p:null,
	  	   	fg_c:null,

	  	   		fortalezas:[],


	  	   

	  },


	  methods:{
	  			login_user(){
	  	 		var formData = new FormData();
                formData.append("sav","bod")
                formData.append("id_institucion",this.institucion_id);
                formData.append("nombre_institucion",this.institucion_nombre);
                formData.append("mision_institucion",this.institucion_mision);
                formData.append("vision_institucion",this.institucion_vision);
                formData.append("filosofia_institucion",this.institucion_filosofia);
                formData.append("municipio_institucion",this.institucion_municipio);
                formData.append("direccion_institucion",this.institucion_direccion);
                axios.post('../contenidos_re/php/login.php', formData)
                .then(function (response) {
                  console.log(response)
                  if(response==1){
                      alert("ingresa")
                  }
               
                })

},

                save_debilidades(){
	  	 		var formData = new FormData();
                formData.append("save","boxr")
                formData.append("d_id",this.d_id);
                formData.append("ddebilidades_gd",this.dg_d);
                formData.append("debilidades_gf",this.dg_f);
                formData.append("debilidades_gp",this.dg_p);
                formData.append("debilidades_gc",this.dg_c);
                axios.post('../contenidos_re/php/login.php', formData)
                .then(function (response) {
                  console.log(response)
                  if(response==1){
                      alert("ingresa")
                  }
               
                })
		
		},

                save_fortalezas(){
	  	 		var formData = new FormData();
                formData.append("save","box")
                formData.append("d_id",this.d_id);
                formData.append("fortalezas_gd",this.fg_d);
                formData.append("fortalezas_gf",this.fg_f);
                formData.append("fortalezas_gp",this.fg_p);
                formData.append("fortalezas_gc",this.fg_c);
                axios.post('../contenidos_re/php/login.php', formData)
                .then(function (response) {
                  console.log(response)
                  if(response==1){
                      alert("ingresa")
                  }
               
                })
		
		},

})
