classdef assesment < Turbine
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        Property1
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

    end
end