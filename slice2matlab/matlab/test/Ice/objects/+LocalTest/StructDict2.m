
% Copyright (c) ZeroC, Inc.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef StructDict2
    methods(Access=private)
        function obj = StructDict2()
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
                    LocalTest.StructKey.ice_write(os, d(i).key);
                    LocalTest.S1.ice_write(os, d(i).value);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = struct('key', {}, 'value', {});
            for i = 1:sz
                k = LocalTest.StructKey.ice_read(is);
                v = LocalTest.S1.ice_read(is);
                r(i).key = k;
                r(i).value = v;
            end
        end
        function r = convert(d)
            for i = 1:length(d)
                d(i).value = d(i).value.ice_convert();
            end
            r = d;
        end
    end
end
