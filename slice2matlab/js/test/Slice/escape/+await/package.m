% package   Summary of package
%
% package Properties:
%   for_
%   goto
%   if_
%   internal
%   debugger
%   null

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

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
                obj.if_ = IceInternal.UnsetI.Instance;
                obj.internal = IceInternal.UnsetI.Instance;
                obj.debugger = IceInternal.UnsetI.Instance;
                obj.null = IceInternal.UnsetI.Instance;
            elseif ne(for_, IceInternal.NoInit.Instance)
                obj.for_ = for_;
                obj.goto = goto;
                obj.if_ = if_;
                obj.internal = internal;
                obj.debugger = debugger;
                obj.null = null;
            end;
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
            os.writeValueOpt(3, obj.if_);
            await.while_.writeOpt(os, 5, obj.internal);
            os.writeStringOpt(7, obj.debugger);
            os.writeProxyOpt(8, obj.null);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.for_ = await.break_.ice_readOpt(is, 1);
            obj.goto = await.var.ice_readOpt(is, 2);
            is.readValueOpt(3, @obj.iceSetMember_if_, 'Ice.Value');
            obj.internal = await.while_.readOpt(is, 5);
            obj.debugger = is.readStringOpt(7);
            if is.readOptional(8, Ice.OptionalFormat.FSize)
                is.skip(4);
                obj.null = await.explicitPrx.ice_read(is);
            end
            is.endSlice();
        end
        function iceSetMember_if_(obj, v)
            obj.if_ = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::package';
        end
    end
end
