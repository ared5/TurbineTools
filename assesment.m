classdef assesment < Turbine 
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        
    end

    methods
        % function obj = assesment(turbineName, powerDesign, rotorSpeedDesign, optipitch)
        %     %UNTITLED Construct an instance of this class
        %     %   Detailed explanation goes here
        %     arguments
        %         turbineName (1, :) char {mustBeTextScalar} = 'NoName'     
        %         powerDesign (1, :) double {mustBeNumeric} = 0
        %         rotorSpeedDesign (1, :) double {mustBeNumeric} = 0
        %         optipitch (2, 5)  = [0 0 0 0 0; 0 0 0 0 0]                 
        %     end
        %     obj = obj@Turbine(turbineName, powerDesign, rotorSpeedDesign, optipitch);
        % end

        function plot_optipitch(obj, optipit, turbineID)
            arguments
                obj
                optipit (2, 5)  = [0 0 0 0 0; 0 0 0 0 0]
                turbineID (1, :) char {mustBeTextScalar} = 'NoName'
            end
            
            figure
            plot(optipit(1,:), optipit(2,:), '-ob', LineWidth=3);
            legend('Optipitch');
            xlabel('Power(kW)');
            ylabel('Pitch angle (deg)');
            title(['Optipitch ', turbineID])
        end

        function plot_SPC(obj, SPC_curve, turbineID)
            arguments
                obj
                SPC_curve (2, 6)  = [0 0 0 0 0 0; 0 0 0 0 0 0]
                turbineID (1, :) char {mustBeTextScalar} = 'NoName'
            end

            % AQUI AÑADIR QUE INTERPOLE ENTRE LOS PUNTOS DE FORMA
            % CUADRATICA
            
            figure
            plot(SPC_curve(1, :), SPC_curve(2, :), '-ob', LineWidth=3);
            legend('SPC curve');
            xlabel('RotorSpeed (rpm)');
            ylabel('Power(kW)');
            title(['SPC ', turbineID])
        end        

    end
end