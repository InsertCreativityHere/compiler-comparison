classdef delete < Ice.Value
    %DELETE
    %
    %   Creation
    %     Syntax
    %       obj = await.delete()
    %       obj = await.delete(else, export, clone)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   delete Properties:
    %     else
    %     export
    %     clone
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ELSE
        %   await.casePrx scalar | empty array of await.casePrx
        else await.casePrx {mustBeScalarOrEmpty} = await.casePrx.empty
        
        % EXPORT
        %   int32 scalar
        export (1, 1) int32
        
        % CLONE
        %   character vector
        clone (1, :) char
    end
    methods
        function obj = delete(else, export, clone)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.else = else;
                obj.export = export;
                obj.clone = clone;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::await::delete', -1, true);
            os.writeProxy(obj.else);
            os.writeInt(obj.export);
            os.writeString(obj.clone);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.else = await.casePrx.ice_read(is);
            obj.export = is.readInt();
            obj.clone = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::await::delete';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::await::delete'
    end
end
