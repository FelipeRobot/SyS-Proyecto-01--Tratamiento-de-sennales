%main%

%Ejecución del GUI%



function GUI_execute()
    msg = "Primer proyecto MATLAB-S&S"
    integrantes = "Felipe Useche-"

      state = menu( msg,'Ejecución actividades preparación' ,'Escalamiento', 'Inversión en tiempo','Respuesta impulso' );
    
        switch state 
            case 1
                %actividades_previas();
                main();
            case 2
                %EscalamientoConOpciones();
                main();
            case 3
                %InversionTiempoV2();
                main();
            case 4 
                %impulso();
                main();
            case 5
                %impulso
        end
end