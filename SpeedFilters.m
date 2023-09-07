classdef SpeedFilters < Turbine & assesment
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        LPFilter
        HPFilter
        StopBandFilter
    end
    
    methods
        function obj = SpeedFilters
            obj.LPFilter = 0;
            obj.HPFilter = 0;
            obj.StopBandFilter = 0;
        end
        
        function obj = build_LP_filter(obj, fc, gain, damp)
            arguments
                obj;
                fc (1,1) double {mustBePositive} = 0
                gain (1,1) double {mustBePositive} = 0
                damp (1,1) double {mustBePositive} = 0
            end

            s = tf('s');
            obj.LPFilter = gain / ( (s^2/(2*pi*fc)^2) + (s/(2*pi*fc*damp)) + 1 );
        end

        function obj = build_HP_filter(obj, fc, gain, damp)
            arguments
                obj;
                fc (1,1) double {mustBePositive} = 0
                gain (1,1) double {mustBePositive} = 0
                damp (1,1) double {mustBePositive} = 0
            end

            s = tf('s');
            obj.HPFilter = (gain*s) / ( (s^2/(2*pi*fc)^2) + (s/(2*pi*fc*damp)) + 1 );
        end

        function obj = build_StopBand_filter(obj, fc, gain, damp)
            arguments
                obj;
                fc (1,1) double {mustBePositive} = 0
                gain (1,1) double {mustBePositive} = 0
                damp (1,1) double {mustBePositive} = 0
            end
            s = tf('s');
            obj.StopBandFilter = 1;
        end
        
    end
end

