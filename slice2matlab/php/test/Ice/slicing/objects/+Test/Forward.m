classdef Forward < Ice.Value
    %FORWARD
    %
    %   Creation
    %     Syntax
    %       obj = Test.Forward()
    %       obj = Test.Forward(h)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Forward Properties:
    %     h
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % H
        %   Test.Hidden scalar | empty array of Test.Hidden
        h {mustBeScalarOrEmpty} = Test.Hidden.empty
    end
    methods
        function obj = Forward(h)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.h = h;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Forward', -1, true);
            os.writeValue(obj.h);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_h, 'Test.Hidden');
            is.endSlice();
        end
        function iceSetProperty_h(obj, v)
            obj.h = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Forward';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Forward'
    end
end
