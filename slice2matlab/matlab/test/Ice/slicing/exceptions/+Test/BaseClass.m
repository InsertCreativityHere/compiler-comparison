classdef BaseClass < Ice.Value
    %BASECLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.BaseClass()
    %       obj = Test.BaseClass(bc)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   BaseClass Properties:
    %     bc
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BC
        %   character vector
        bc (1, :) char
    end
    methods
        function obj = BaseClass(bc)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.bc = bc;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::BaseClass', -1, true);
            os.writeString(obj.bc);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bc = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::BaseClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::BaseClass'
    end
end
