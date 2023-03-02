classdef ComplexNumber
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    properties (Access=private)
        Real {mustBeNumeric} = 0;
        Complex {mustBeNumeric} = 0;
    end

    methods (Access=public,Static)
        function result = ComplexNumber(real,complex)
            result.Real = real;
            result.Complex = complex;
        end
        function result = add(inputArg1,inputArg2)
            result.Real = inputArg1.Real + inputArg2.Real;
            result.Complex = inputArg1.Complex + inputArg2.Complex;
        end

        function result = subtract(inputArg1,inputArg2)
            result.Real = inputArg1.Real - inputArg2.Real;
            result.Complex = inputArg1.Complex - inputArg2.Complex;
        end
        function str = string(complexNo)
            str = "";
            if complexNo.Real < 0
                str = str + "(" + string(complexNo.Real) + ")";
            end
            if complexNo.Real > 0
                str = str + string(complexNo.Real);
            end
            if complexNo.Real ~= 0 && complexNo.Complex ~= 0
                str = str + "+";
            end
            if complexNo.Complex < 0
                str = str + "i*(" + string(complexNo.Complex) + ")";
                return
            end
            if complexNo.Complex > 0
                str = str + "i*" + string(complexNo.Complex);
                return
            end
            str = "0";
        end
    end
end