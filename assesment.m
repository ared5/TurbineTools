classdef assesment < Turbine 
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        
    end

    methods
        function obj = assesment(turbineName, powerDesign, rotorSpeedDesign, optipitch)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                turbineName (1, :) char {mustBeTextScalar} = 'NoName'     
                powerDesign (1, :) double {mustBeNumeric} = 0
                rotorSpeedDesign (1, :) double {mustBeNumeric} = 0
                optipitch (2, 5)  = [0 0 0 0 0; 0 0 0 0 0]                 
            end
            obj = obj@Turbine(turbineName, powerDesign, rotorSpeedDesign, optipitch);
        end

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

        

    end
end