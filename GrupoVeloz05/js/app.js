 function ingresar(){

        var user = (document.getElementById('user')).value;
        var clave = (document.getElementById('clave')).value;

        if(user == 'johan' && clave == '123'){
            alert("Contraseña Correcta!");
  
            window.location.href = "/Html/Administrador/administrador.html";
        }
        else{
            alert('Revise clave o contraseña');
        }
    }