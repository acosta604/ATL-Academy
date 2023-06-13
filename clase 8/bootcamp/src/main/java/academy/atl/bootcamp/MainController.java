package academy.atl.bootcamp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @GetMapping("/prueba/{text}")
    public String primeraPrueba(@PathVariable String texto){

        String codigoTransformado ="";
        for (int i=0;i<texto.length();i++){
            String letraDeTexto =""+ texto.charAt(i);

            codigoTransformado = convertirLetraCodigoMorse( codigoTransformado, letraDeTexto);

        }
        return codigoTransformado;
    }

    private static String convertirLetraCodigoMorse( String codigoTransformado, String letraDeTexto) {

        String [] tablaAbc = {"A", "B", "C"};
        String [] tablaCodigoMorse = {".-", "-...", "-.-."};

        for(int j = 0; j< tablaAbc.length; j++){
            String letraTablaAbc= tablaAbc[j];
            if(letraTablaAbc.equalsIgnoreCase(letraDeTexto)){
                String caracterenCodigoMorse= tablaCodigoMorse[j];
                codigoTransformado += ""+ letraDeTexto;
            }

        }
        return codigoTransformado;
    }


}
