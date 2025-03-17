

function scalate_GUI()

 %lectura del audio 
    [x, fs] = audioread('Audio-Escalamiento.mp3');
       
    %Opciones de escalamiento 

    msg ='Seleccione el valor del escalamiento deseado:'

    while true
         state = menu(msg, 'x0.5', 'x0.8', 'Velocidad normal', 'x1.20', 'x1.5', 'x2', 'volver')

        switch(state)
            case 1
                subMenu(0.5 , x, fs);
            case 2
                subMenu(0.8), x, fs;
            case 3
                subMenu(1, x, fs);
            case 4
                subMenu(1.20, x, fs);
            case 5
                subMenu(1.5,x, fs);
            case 6
                subMenu(2,x, fs);
            case 7
                break;
        end     

    end

end


function subMenu(velocidad, x , fs)
    
    fs_escalada = fs*velocidad; 
    while true
        state = menu('','Reproducir audio escalado.', 'Volver');
        
        switch(state)
            case 1
                sound(x, fs_escalada);
                
            case 2
                break;

        end
    end
end







