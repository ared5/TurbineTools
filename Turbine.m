classdef Turbine 
    %TURBINE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        turbineName 
        powerDesign
        rotorSpeedDesign 
          
        speedCurve
        powerCurve
    end

    properties (Access = public)
        optipitch
    end
    
    methods 
        % function obj = Turbine(turbineName, powerDesign, rotorSpeedDesign, optipitch, speedCurve, powerCurve)
        %     %TURBINE Construct an instance of this class
        %     %   Detailed explanation goes here
        % 
        %     arguments
        %         turbineName (1, :) char {mustBeTextScalar} = 'NoName'
        %         powerDesign (1, :) double {mustBeNumeric} = 0
        %         rotorSpeedDesign (1, :) double {mustBeNumeric} = 0
        %         optipitch (2, 5)  = [0 0 0 0 0; 0 0 0 0 0]
        %         speedCurve (1, 6) double {mustBeVector} = [0 0 0 0 0 0]
        %         powerCurve (1, 6) double {mustBeVector} = [0 0 0 0 0 0]
        %     end
        % 
        %     obj.turbineName = turbineName;
        %     obj.powerDesign = powerDesign;
        %     obj.rotorSpeedDesign = rotorSpeedDesign;
        %     obj.optipitch = optipitch;       
        %     obj.speedCurve = speedCurve;
        %     obj.powerCurve = powerCurve;
        % end

        function optipit = get_optipitch(obj)
            optipit = obj.optipitch;
        end

        function turbID = get_turbineID(obj)
            turbID = obj.turbineName;
        end

        function obj = set_optipitch(obj, optipitch)
            obj.optipitch = optipitch;
        end

        function obj = set_SPC(obj, speedCurve, powerCurve)
            obj.speedCurve = speedCurve;
            obj.powerCurve = powerCurve;
        end

        function SPC = get_SPC(obj)
            SPC = [obj.speedCurve; obj.powerCurve];
        end

    end
end

