%Inversión en tiempo


function inverse()
    % Get the directory where this function is located
    currentDir = fileparts(mfilename('fullpath'));
    
    msg = 'Elija qué audio desea escuchar';

    while true
        state = menu(msg, 'Odio la luz azul al oído', 'Anita lava la tina', 'A Mercedes ese de crema', 'salir');
        switch(state)
            case 1
                inverse_submenu(1)
            case 2
                inverse_submenu(2)
            case 3
                inverse_submenu(3)
            case 4
                break;
        end 
    end

end

function inverse_submenu(audio_index)
    % Get the directory where this function is located
    currentDir = fileparts(mfilename('fullpath'));
    
    % Define audio paths relative to the function location
    audio_path = {
        fullfile(currentDir, 'A-mercedes-ese-de-.mp3'),
        fullfile(currentDir, 'Odio-la-luz-azul.mp3'),
        fullfile(currentDir, 'Anita-lava-.mp3')
    };
    
    [audio, fs] = audioread(audio_path{audio_index}); 
    
    audio_invertido = flipud(audio);
    msg = 'Elija una opción';

    while true
        state = menu(msg, 'Escuchar audio de referencia', 'Escuchar audio invertido','Gráfica audio','Gráfica audio invertido', 'volver'); 

        switch(state)
            case 1
                sound(audio, fs);
            case 2
                sound(audio_invertido, fs);
            case 3
                generar_grafica(audio, fs);
            case 4
                generar_grafica(audio_invertido, fs);
            case 5
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
