function impulso_obtenido()
    
    [impulso, fs] = audioread("\pium.mp3");
    [audi, fs2]=audioread("\respuesta-impulso-obtenida.mp3");

    msg ="Elija una opción";

    resultado = conv(impulso(:), audi(:));

    while true
        state = menu(msg, 'Escuchar audio original', 'Esuchar respuesta impulso', 'Gráfica audio.','Gráfica pulso','Gráfica resultado','volver');

        switch(state)
            case 1
                sound(audi, fs);
            case 2
                sound(resultado, fs);
            case 3
                generar_grafica(audi, fs);
            case 4
                generar_grafica(impulso, fs2);
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