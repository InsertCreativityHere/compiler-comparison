classdef Base < Ice.Value
    %BASE
    %
    %   Creation
    %     Syntax
    %       obj = Test.Base()
    %       obj = Test.Base(b)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Base Properties:
    %     b
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % B
        %   character vector
        b (1, :) char
    end
    methods
        function obj = Base(b)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.b = b;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            os.writeString(obj.b);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Base'
    end
end
