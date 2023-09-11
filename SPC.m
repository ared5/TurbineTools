classdef SPC < Turbine & assesment
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties(Access = private)
        SpeedCurve
        PowerCurve
    end
    
    methods
        % function obj = SPC(inputArg1,inputArg2)
        %     %UNTITLED Construct an instance of this class
        %     %   Detailed explanation goes here
        %     obj.Property1 = inputArg1 + inputArg2;
        % end
        
        function obj = set_SPC(obj, speedCurve, powerCurve)
            arguments
                obj
                speedCurve (1, 6) double {mustBeVector} = [0 0 0 0 0 0]
                powerCurve (1, 6) double {mustBeVector} = [0 0 0 0 0 0]
            end

            obj.SpeedCurve = speedCurve;
            obj.PowerCurve = powerCurve;
        end
    end
end

