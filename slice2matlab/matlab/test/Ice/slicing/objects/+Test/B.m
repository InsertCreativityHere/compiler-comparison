classdef B < Ice.Value
    %B
    %
    %   Creation
    %     Syntax
    %       obj = Test.B()
    %       obj = Test.B(sb, pb)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   B Properties:
    %     sb
    %     pb
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SB
        %   character vector
        sb (1, :) char
        
        % PB
        %   Test.B scalar | empty array of Test.B
        pb {mustBeScalarOrEmpty} = Test.B.empty
    end
    methods
        function obj = B(sb, pb)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.sb = sb;
                obj.pb = pb;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B', -1, true);
            os.writeString(obj.sb);
            os.writeValue(obj.pb);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sb = is.readString();
            is.readValue(@obj.iceSetProperty_pb, 'Test.B');
            is.endSlice();
        end
        function iceSetProperty_pb(obj, v)
            obj.pb = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::B';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::B'
    end
end
