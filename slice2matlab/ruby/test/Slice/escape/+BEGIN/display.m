classdef display < Ice.Value
    %DISPLAY
    %
    %   Creation
    %     Syntax
    %       obj = BEGIN.display()
    %       obj = BEGIN.display(when, dup, else)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   display Properties:
    %     when
    %     dup
    %     else
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % WHEN
        %   BEGIN.and scalar
        when BEGIN.and {mustBeScalarOrEmpty} = BEGIN.and.empty
        
        % DUP
        %   BEGIN.breakPrx scalar | empty array of BEGIN.breakPrx
        dup BEGIN.breakPrx {mustBeScalarOrEmpty} = BEGIN.breakPrx.empty
        
        % ELSE
        %   int32 scalar
        else (1, 1) int32
    end
    methods
        function obj = display(when, dup, else)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.when = when;
                obj.dup = dup;
                obj.else = else;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::BEGIN::display', -1, true);
            BEGIN.and.ice_write(os, obj.when);
            os.writeProxy(obj.dup);
            os.writeInt(obj.else);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.when = BEGIN.and.ice_read(is);
            obj.dup = BEGIN.breakPrx.ice_read(is);
            obj.else = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::BEGIN::display';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::BEGIN::display'
    end
end
