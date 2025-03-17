%main%

% Get the current directory
currentDir = pwd;

% Add the directories containing the functions to the MATLAB path using full paths
addpath(fullfile(currentDir, 'Escalamiento en tiempo'));
addpath(fullfile(currentDir, 'Impulso'));
addpath(fullfile(currentDir, 'Inversión en tiempo'));

% Display current path to verify
disp('Current MATLAB path:');
disp(path);

msg = "Primer proyecto MATLAB-S&S";
integrantes = "Felipe Useche-";

while true
    state = menu(msg, 'Escalamiento', 'Inversión en tiempo', 'Respuesta impulso','Salir');
    
    switch state 
        case 1
            scalate_GUI();
        case 2
            inverse();
        case 3
            impulso();
        case 0  % User clicked Cancel
            break;
    end
end