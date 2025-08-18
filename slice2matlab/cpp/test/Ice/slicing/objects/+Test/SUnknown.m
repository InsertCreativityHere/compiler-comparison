classdef SUnknown < Ice.Value
    %SUNKNOWN
    %
    %   Creation
    %     Syntax
    %       obj = Test.SUnknown()
    %       obj = Test.SUnknown(su, cycle)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SUnknown Properties:
    %     su
    %     cycle
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SU
        %   character vector
        su (1, :) char
        
        % CYCLE
        %   Test.SUnknown scalar | empty array of Test.SUnknown
        cycle {mustBeScalarOrEmpty} = Test.SUnknown.empty
    end
    methods
        function obj = SUnknown(su, cycle)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.su = su;
                obj.cycle = cycle;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SUnknown', -1, true);
            os.writeString(obj.su);
            os.writeValue(obj.cycle);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.su = is.readString();
            is.readValue(@obj.iceSetProperty_cycle, 'Test.SUnknown');
            is.endSlice();
        end
        function iceSetProperty_cycle(obj, v)
            obj.cycle = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::SUnknown';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::SUnknown'
    end
end
