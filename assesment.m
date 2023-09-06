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
                turbineName
                powerDesign
                rotorSpeedDesign
                optipitch

            end
            obj = obj@Turbine(turbineName, powerDesign, rotorSpeedDesign, optipitch);
        end

        function plot_optipitch(obj)
            figure
            plot(obj.optipitch(1,:), obj.optipitch(2,:), '-ob', LineWidth=3);
            legend('Optipitch');
            xlabel('Power(kW)');
            ylabel('Pitch angle (deg)');
            title(['Optipitch ', obj.turbineName])


        end

    end
end