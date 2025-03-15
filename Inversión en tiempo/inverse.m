%Inversión en tiempo


function inverse()

    msg = 'Elija qué audio desea escuchar';
    state= menu(msg, 'Odio la luz azul al oído', 'Anita lava la tina', 'A Mercedes ese de crema');


    switch(state)
        case 1
            inverse_submenu(1)
        case 2
            inverse_submenu(2)
        case 3
            inverse_submenu(3)
    end

end

function inverse_submenu(audio_index)
%lectura de audio

audio_path = ["\A-mercedes-ese-de-.mp3", "\Odio-la-luz-azul.mp3", "\Anita-lava-.mp3"];

[audio, fs] = audioread(audio_path(audio_index)); 

audio_invertido = flipud(audio);

    msg = 'Elija una opción';
    state =menu(msg, 'Escuchar audio de referencia', 'Escuchar audio invertido','volver'); 
    

    switch(state)
        case 1
            sound(audio, fs);
            inverse_submenu(audio_index);
        case 2
            sound(audio_invertido, fs);
            inverse_submenu(audio_index);
        case 3
            inverse();
    end

end
