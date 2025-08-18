classdef Hidden < Ice.Value
    %HIDDEN
    %
    %   Creation
    %     Syntax
    %       obj = Test.Hidden()
    %       obj = Test.Hidden(f)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Hidden Properties:
    %     f
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % F
        %   Test.Forward scalar | empty array of Test.Forward
        f {mustBeScalarOrEmpty} = Test.Forward.empty
    end
    methods
        function obj = Hidden(f)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.f = f;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Hidden', -1, true);
            os.writeValue(obj.f);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_f, 'Test.Forward');
            is.endSlice();
        end
        function iceSetProperty_f(obj, v)
            obj.f = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Hidden';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Hidden'
    end
end
