%Impulso (No obtenido)

function impulso()
    audio_path =["\choque.mp3", "\Cuevas_australiana.mp3","\respuesta_impulso_sala.mp3"]
    
    [audio_original, fs_original] = audioread('\obteniendo-SLIT.mp3');

    while true
        
        msg= "elija qué respuesta desea escuchar";
        msg2 = "Elija una opción";

        state = menu(msg, "Choque", "Cuevas", "Sala", "volver");

        if state == 4
            break;
        else
            [pulse, fs] = audioread(audio_path(state)); 
        end

        user_input = menu(msg2, "Esuchar audio original", "Escuchar respuesta impulso", "volver");

            switch(user_input)
                case 1
                    sound(audio_original, fs_original);            
                case 2
                    sound(obtenido, fs);
                case 3
                    impulso();
                    break;
             end


    end

end


