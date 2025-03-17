%main%

%Ejecución del GUI%

function GUI_execute()
    msg = "Primer proyecto MATLAB-S&S"
    integrantes = "Felipe Useche-"

      state = menu( msg,'Ejecución actividades preparación' ,'Escalamiento', 'Inversión en tiempo','Respuesta impulso' );
    
      
    while true

          switch state 
            case 1
                %actividades_previas();
                
            case 2
                %EscalamientoConOpciones();
                
            case 3
                %InversionTiempoV2();
                
            case 4 
                %impulso();
                
            case 5
                %impulso
        end
    

    end

end