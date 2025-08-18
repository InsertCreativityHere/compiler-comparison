classdef notify < Ice.Value
    %NOTIFY
    %
    %   Creation
    %     Syntax
    %       obj = abstract.notify()
    %       obj = abstract.notify(if, equals)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   notify Properties:
    %     if
    %     equals
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % IF
        %   int32 scalar
        if (1, 1) int32
        
        % EQUALS
        %   abstract.defaultPrx scalar | empty array of abstract.defaultPrx
        equals abstract.defaultPrx {mustBeScalarOrEmpty} = abstract.defaultPrx.empty
    end
    methods
        function obj = notify(if, equals)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.if = if;
                obj.equals = equals;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::notify', -1, true);
            os.writeInt(obj.if);
            os.writeProxy(obj.equals);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if = is.readInt();
            obj.equals = abstract.defaultPrx.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::abstract::notify';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::abstract::notify'
    end
end
