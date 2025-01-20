
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef properties_ < classdef_.break_.try_
    properties
        if_ int32
        catch_
        spmd_
        otherwise_ containers.Map
    end
    methods
        function obj = properties_(while_, delete, if_, catch_, spmd_, otherwise_)
            if nargin == 0
                while_ = 1;
                delete = 2;
                if_ = 2;
                catch_ = [];
                spmd_ = [];
                otherwise_ = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                v = { while_, delete };
            elseif eq(while_, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { while_, delete };
            end
            obj = obj@classdef_.break_.try_(v{:});
            if ne(while_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.catch_ = catch_;
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
            os.startSlice('::classdef::break::properties', -1, false);
            os.writeInt(obj.if_);
            os.writeValue(obj.catch_);
            classdef_.break_.parfor_.write(os, obj.spmd_);
            classdef_.break_.switch_.write(os, obj.otherwise_);
            os.endSlice();
            iceWriteImpl@classdef_.break_.try_(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            is.readValue(@obj.iceSetMember_catch_, 'classdef_.break_.xor');
            obj.spmd_ = classdef_.break_.parfor_.read(is);
            obj.otherwise_ = classdef_.break_.switch_.read(is);
            is.endSlice();
            iceReadImpl@classdef_.break_.try_(obj, is);
        end
        function iceSetMember_catch_(obj, v)
            obj.catch_ = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::break::properties';
        end
    end
end
