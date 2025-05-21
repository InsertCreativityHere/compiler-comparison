
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef S3
    properties
        obj
        sd containers.Map
        prx
    end
    methods
        function obj = S3(obj, sd, prx)
            if nargin == 0
                obj.obj = [];
                obj.sd = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.prx = [];
            elseif ne(obj, IceInternal.NoInit.Instance)
                obj.obj = obj;
                obj.sd = sd;
                obj.prx = prx;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.obj = obj.obj.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.S3(IceInternal.NoInit.Instance);
            obj_ = IceInternal.ValueHolder();
            r.obj = obj_;
            is.readValue(@(v_) obj_.set(v_), 'Test.C');
            r.sd = Test.StringDict.read(is);
            r.prx = is.readProxy();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S3();
            end
            os.writeValue(v.obj);
            Test.StringDict.write(os, v.sd);
            os.writeProxy(v.prx);
        end
    end
end
