
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyStructMyEnumD
    methods(Access=private)
        function obj = MyStructMyEnumD()
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
                    Test.MyStruct.ice_write(os, d(i).key);
                    Test.MyEnum.ice_write(os, d(i).value);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.MyStructMyEnumD.write(os, d);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = struct('key', {}, 'value', {});
            for i = 1:sz
                k = Test.MyStruct.ice_read(is);
                v = Test.MyEnum.ice_read(is);
                r(i).key = k;
                r(i).value = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.MyStructMyEnumD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
