classdef Turbine
    %TURBINE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        turbineName
        powerDesign
        rotorSpeedDesign   
        optipitch
    end

    properties (Access = public)
        
        

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

        function optipit = get_optipitch(obj)
            optipit = obj.optipitch;
        end

        function turbID = get_turbineID(obj)
            turbID = obj.turbineName;
        end
    end
end

