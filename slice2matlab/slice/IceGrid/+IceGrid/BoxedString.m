classdef BoxedString < Ice.Value
    %BOXEDSTRING A "boxed" string.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.BoxedString()
    %       obj = IceGrid.BoxedString(value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   BoxedString Properties:
    %     value - The value of the boxed string.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VALUE The value of the boxed string.
        %   character vector
        value (1, :) char
    end
    methods
        function obj = BoxedString(value)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::BoxedString', -1, true);
            os.writeString(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::BoxedString';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::BoxedString'
    end
end
