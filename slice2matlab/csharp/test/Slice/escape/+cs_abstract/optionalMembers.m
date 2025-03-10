
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef optionalMembers < Ice.Value
    properties
        for_
        goto
        if_
        internal
        namespace
    end
    methods
        function obj = optionalMembers(for_, goto, if_, internal, namespace)
            if nargin == 0
                obj.for_ = IceInternal.UnsetI.Instance;
                obj.goto = IceInternal.UnsetI.Instance;
                obj.if_ = [];
                obj.internal = IceInternal.UnsetI.Instance;
                obj.namespace = IceInternal.UnsetI.Instance;
            elseif ne(for_, IceInternal.NoInit.Instance)
                obj.for_ = for_;
                obj.goto = goto;
                obj.if_ = if_;
                obj.internal = internal;
                obj.namespace = namespace;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::cs_abstract::optionalMembers', -1, true);
            cs_abstract.break_.ice_writeOpt(os, 1, obj.for_);
            cs_abstract.as.ice_writeOpt(os, 2, obj.goto);
            os.writeProxyOpt(3, obj.if_);
            cs_abstract.while_.writeOpt(os, 5, obj.internal);
            os.writeStringOpt(7, obj.namespace);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.for_ = cs_abstract.break_.ice_readOpt(is, 1);
            obj.goto = cs_abstract.as.ice_readOpt(is, 2);
            obj.if_ = is.readProxyOpt(3, 'cs_abstract.explicitPrx');
            obj.internal = cs_abstract.while_.readOpt(is, 5);
            obj.namespace = is.readStringOpt(7);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::cs_abstract::optionalMembers';
        end
    end
end
