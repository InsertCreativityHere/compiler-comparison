classdef MyOtherClass < Ice.Value
    %MYOTHERCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.MyOtherClass()
    %       obj = Test.MyOtherClass(s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyOtherClass Properties:
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   character vector
        s (1, :) char
    end
    methods
        function obj = MyOtherClass(s)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MyOtherClass', -1, true);
            os.writeString(obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyOtherClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MyOtherClass'
    end
end
