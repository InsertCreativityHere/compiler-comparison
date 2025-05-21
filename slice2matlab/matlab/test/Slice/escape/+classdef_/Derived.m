
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Derived < classdef_.Base
    properties
        if_ int32
        spmd_
        otherwise_ containers.Map
    end
    methods
        function obj = Derived(while_, if_, spmd_, otherwise_)
            if nargin == 0
                while_ = 1;
                if_ = 2;
                spmd_ = [];
                otherwise_ = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                v = { while_ };
            elseif eq(while_, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { while_ };
            end
            obj = obj@classdef_.Base(v{:});
            if ne(while_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.spmd_ = spmd_;
                obj.otherwise_ = otherwise_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::Derived', -1, false);
            os.writeInt(obj.if_);
            classdef_.parfor_.write(os, obj.spmd_);
            classdef_.switch_.write(os, obj.otherwise_);
            os.endSlice();
            iceWriteImpl@classdef_.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.spmd_ = classdef_.parfor_.read(is);
            obj.otherwise_ = classdef_.switch_.read(is);
            is.endSlice();
            iceReadImpl@classdef_.Base(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::Derived';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::classdef::Derived'
    end
end
