classdef echo < Ice.Value
    %ECHO
    %
    %   Creation
    %     Syntax
    %       obj = and.echo()
    %       obj = and.echo(if, empty)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   echo Properties:
    %     if
    %     empty
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % IF
        %   int32 scalar
        if (1, 1) int32
        
        % EMPTY
        %   and.diePrx scalar | empty array of and.diePrx
        empty and.diePrx {mustBeScalarOrEmpty} = and.diePrx.empty
    end
    methods
        function obj = echo(if, empty)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.if = if;
                obj.empty = empty;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::echo', -1, true);
            os.writeInt(obj.if);
            os.writeProxy(obj.empty);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if = is.readInt();
            obj.empty = and.diePrx.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::and::echo';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::and::echo'
    end
end
