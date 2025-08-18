classdef Pen < Ice.Value
    %PEN
    %
    %   Creation
    %     Syntax
    %       obj = Test.Pen()
    %       obj = Test.Pen(thickness, color)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Pen Properties:
    %     thickness
    %     color
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THICKNESS
        %   int32 scalar
        thickness (1, 1) int32
        
        % COLOR
        %   Test.Color scalar
        color Test.Color {mustBeScalarOrEmpty} = Test.Color.empty
    end
    methods
        function obj = Pen(thickness, color)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.thickness = thickness;
                obj.color = color;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Pen', -1, true);
            os.writeInt(obj.thickness);
            Test.Color.ice_write(os, obj.color);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.thickness = is.readInt();
            obj.color = Test.Color.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Pen';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Pen'
    end
end
