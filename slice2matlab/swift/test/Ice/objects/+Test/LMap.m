
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef LMap
    methods(Access=private)
        function obj = LMap()
        end
    end
    methods(Static)
        function write(os, d)
            if isempty(d)
                os.writeSize(0);
            else
                sz = length(d);
                os.writeSize(sz);
                for i = 1:sz
                    Test.StructKey.ice_write(os, d(i).key);
                    os.writeValue(d(i).value);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = struct('key', {}, 'value', {});
            for i = 1:sz
                k = Test.StructKey.ice_read(is);
                v = IceInternal.ValueHolder();
                is.readValue(@(v_) v.set(v_), 'Test.L');
                r(i).key = k;
                r(i).value = v;
            end
        end
        function r = convert(d)
            for i = 1:length(d)
                d(i).value = d(i).value.value;
            end
            r = d;
        end
    end
end
