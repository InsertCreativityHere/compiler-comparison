classdef (Sealed) Draw
    %DRAW
    %
    %   Creation
    %     Syntax
    %       obj = Test.Draw()
    %       obj = Test.Draw(backgroundColor, pen, shared)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Draw Properties:
    %     backgroundColor
    %     pen
    %     shared
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BACKGROUNDCOLOR
        %   Test.Color scalar
        backgroundColor Test.Color {mustBeScalarOrEmpty} = Test.Color.empty
        
        % PEN
        %   Test.Pen scalar | empty array of Test.Pen
        pen {mustBeScalarOrEmpty} = Test.Pen.empty
        
        % SHARED
        %   logical scalar
        shared (1, 1) logical
    end
    methods
        function obj = Draw(backgroundColor, pen, shared)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.backgroundColor = backgroundColor;
                obj.pen = pen;
                obj.shared = shared;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.pen = obj.pen.value;
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = Test.Draw();
            r.backgroundColor = Test.Color.ice_read(is);
            pen_ = IceInternal.ValueHolder();
            r.pen = pen_;
            is.readValue(@(v_) pen_.set(v_), 'Test.Pen');
            r.shared = is.readBool();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Draw();
            end
            Test.Color.ice_write(os, v.backgroundColor);
            os.writeValue(v.pen);
            os.writeBool(v.shared);
        end
    end
end
