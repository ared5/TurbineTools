classdef Turbine
    %TURBINE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        tubineName
        powerDesign
        rotorSpeedDesign
        optipitch

    end
    
    methods
        function obj = Turbine(turbineName, powerDesign, rotorSpeedDesign, optipitch)
            %TURBINE Construct an instance of this class
            %   Detailed explanation goes here

            arguments
                turbineName (1, :) char {mustBeTextScalar} = 'NoName'
                powerDesign (1, :) double {mustBeNumeric} = 0
                rotorSpeedDesign (1, :) double {mustBeNumeric} = 0
                optipitch (1, 5) double {mustBeVector} = [0 0 0 0 0]
            end

            obj.tubineName = turbineName;
            obj.powerDesign = powerDesign;
            obj.rotorSpeedDesign = rotorSpeedDesign;
            obj.optipitch = optipitch;
            
        end
    end
end

