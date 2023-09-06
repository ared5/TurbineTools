classdef Turbine
    %TURBINE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        
        powerDesign
        rotorSpeedDesign   
        
    end

    properties (Access = public)
        turbineName
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
                optipitch (2, 5)  = [0 0 0 0 0; 0 0 0 0 0]
            end

            obj.turbineName = turbineName;
            obj.powerDesign = powerDesign;
            obj.rotorSpeedDesign = rotorSpeedDesign;
            obj.optipitch = optipitch;
            
        end
    end
end

