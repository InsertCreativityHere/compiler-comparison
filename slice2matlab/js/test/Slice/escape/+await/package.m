
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef package < Ice.Value
    properties
        for_
        goto
        if_
        internal
        debugger
        null
    end
    methods
        function obj = package(for_, goto, if_, internal, debugger, null)
            if nargin == 0
                obj.for_ = IceInternal.UnsetI.Instance;
                obj.goto = IceInternal.UnsetI.Instance;
                obj.if_ = [];
                obj.internal = IceInternal.UnsetI.Instance;
                obj.debugger = IceInternal.UnsetI.Instance;
                obj.null = [];
            elseif ne(for_, IceInternal.NoInit.Instance)
                obj.for_ = for_;
                obj.goto = goto;
                obj.if_ = if_;
                obj.internal = internal;
                obj.debugger = debugger;
                obj.null = null;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::await::package', -1, true);
            await.break_.ice_writeOpt(os, 1, obj.for_);
            await.var.ice_writeOpt(os, 2, obj.goto);
            os.writeProxyOpt(3, obj.if_);
            await.while_.writeOpt(os, 5, obj.internal);
            os.writeStringOpt(7, obj.debugger);
            os.writeProxyOpt(8, obj.null);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.for_ = await.break_.ice_readOpt(is, 1);
            obj.goto = await.var.ice_readOpt(is, 2);
            obj.if_ = is.readProxyOpt(3, 'await.explicitPrx');
            obj.internal = await.while_.readOpt(is, 5);
            obj.debugger = is.readStringOpt(7);
            obj.null = is.readProxyOpt(8, 'await.explicitPrx');
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::package';
        end
    end
end
