classdef switch < Ice.Value
    %SWITCH
    %
    %   Creation
    %     Syntax
    %       obj = import.switch()
    %       obj = import.switch(export, volatile)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   switch Properties:
    %     export
    %     volatile
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % EXPORT
        %   import.breakPrx scalar | empty array of import.breakPrx
        export import.breakPrx {mustBeScalarOrEmpty} = import.breakPrx.empty
        
        % VOLATILE
        %   int32 scalar
        volatile (1, 1) int32
    end
    methods
        function obj = switch(export, volatile)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.export = export;
                obj.volatile = volatile;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::import::switch', -1, true);
            os.writeProxy(obj.export);
            os.writeInt(obj.volatile);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.export = import.breakPrx.ice_read(is);
            obj.volatile = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::import::switch';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::import::switch'
    end
end
