%Impulso (No obtenido)

function impulso()
    audio_path =["\choque.mp3", "\Cuevas_australiana.mp3","respuesta_impulso_sala.mp3"]
    
    [audio_original, fs_original] = audioread('');


    msg= "elija qué respuesta desea escuchar";

    state = menu(msg, "Choque", "Cuevas", "Sala");
    [pulse, fs] = audioread(audio_path(state));

   msg2 = "Elija una opción"

    obtenido = conv(audio_original, pulse);

   
    user_input = menu(msg2, "Esuchar audio original", "Escuchar respuesta impulso")
    switch(user_input)
        case 1
            sound(audio_original, fs_original);            
        case 2
            sound(obtenido, fs);
        case 3
            impulse();
    end


end


