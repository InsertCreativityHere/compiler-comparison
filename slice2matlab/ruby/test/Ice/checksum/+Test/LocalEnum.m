% LocalEnum   Summary of LocalEnum
%
% LocalEnum Properties:
%   LocalEnum1
%   LocalEnum2
%   LocalEnum3

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.10

classdef LocalEnum < uint8
    enumeration
        LocalEnum1 (0)
        LocalEnum2 (1)
        LocalEnum3 (2)
    end
    methods(Static)
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.LocalEnum.LocalEnum1;
                case 1
                    r = Test.LocalEnum.LocalEnum2;
                case 2
                    r = Test.LocalEnum.LocalEnum3;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
