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
        resultado = conv(pulse(:), audio_original(:));
        user_input = menu(msg2, "Esuchar audio original", "Escuchar respuesta impulso", "Generar gráfica antes de la convolución" ,"Generar gráfica del pulso seleccionado","Generar gráfica después de la convolución","volver");

            switch(user_input)
                case 1
                    sound(audio_original, fs_original);            
                case 2
                    sound(resultado, fs);
                case 3
                    generar_grafica(audio_original, fs);
                case 4
                    generar_grafica(pulse, fs)
                case 5
                    generar_grafica(resultado, fs);
                case 6
                    break;
             end


    end

end



function generar_grafica(signal, fs)
     figure;
            hold on;
            t0 = (0:length(signal)-1) / fs;
            plot(t0, signal); 
            xlabel('Tiempo (s)');
            ylabel('Amplitud');
            title('Señal de audio - Dominio en el tiempo');
            hold off;
end