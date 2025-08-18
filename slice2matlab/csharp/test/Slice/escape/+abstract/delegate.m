classdef delegate < Ice.Value
    %DELEGATE
    %
    %   Creation
    %     Syntax
    %       obj = abstract.delegate()
    %       obj = abstract.delegate(if, else)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   delegate Properties:
    %     if
    %     else
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % IF
        %   int32 scalar
        if (1, 1) int32
        
        % ELSE
        %   abstract.casePrx scalar | empty array of abstract.casePrx
        else abstract.casePrx {mustBeScalarOrEmpty} = abstract.casePrx.empty
    end
    methods
        function obj = delegate(if, else)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.if = if;
                obj.else = else;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::delegate', -1, true);
            os.writeInt(obj.if);
            os.writeProxy(obj.else);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if = is.readInt();
            obj.else = abstract.casePrx.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::abstract::delegate';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::abstract::delegate'
    end
end
