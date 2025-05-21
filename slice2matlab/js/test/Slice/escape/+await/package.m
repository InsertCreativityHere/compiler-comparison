
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef package < Ice.Value
    properties
        for
        goto
        null
        internal
        debugger
    end
    methods
        function obj = package(for, goto, null, internal, debugger)
            if nargin == 0
                obj.for = IceInternal.UnsetI.Instance;
                obj.goto = IceInternal.UnsetI.Instance;
                obj.null = [];
                obj.internal = IceInternal.UnsetI.Instance;
                obj.debugger = IceInternal.UnsetI.Instance;
            elseif ne(for, IceInternal.NoInit.Instance)
                obj.for = for;
                obj.goto = goto;
                obj.null = null;
                obj.internal = internal;
                obj.debugger = debugger;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::await::package', -1, true);
            await.break.ice_writeOpt(os, 1, obj.for);
            await.var.ice_writeOpt(os, 2, obj.goto);
            os.writeProxyOpt(3, obj.null);
            await.while.writeOpt(os, 5, obj.internal);
            os.writeStringOpt(7, obj.debugger);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.for = await.break.ice_readOpt(is, 1);
            obj.goto = await.var.ice_readOpt(is, 2);
            obj.null = is.readProxyOpt(3, 'await.explicitPrx');
            obj.internal = await.while.readOpt(is, 5);
            obj.debugger = is.readStringOpt(7);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::package';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::await::package'
    end
end
