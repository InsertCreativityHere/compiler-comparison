
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

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
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.LMap.write(os, d);
                os.endSize(pos);
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
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.LMap.read(is);
            else
                r = Ice.Unset;
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
