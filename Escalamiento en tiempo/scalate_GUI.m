

function scalate_GUI()

 %lectura del audio 
[x, fs] = audioread('Audio-Escalamiento.mp3');
       
    %Opciones de escalamiento 

    msg ='Seleccione el valor del escalamiento deseado:'

    state = menu(msg, 'x0.5', 'x0.8', 'Velocidad normal', 'x1.20', 'x1.5', 'x2')

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


    end 
end


function subMenu(velocidad, x , fs)
    state = menu('','Reproducir audio escalado.', 'Volver')
    
    fs_escalada = fs*velocidad; 

    switch(state)
        case 1
            sound(x, fs_escalada);
            scalate_GUI()
        case 2
            scalate_GUI();

    end
end








