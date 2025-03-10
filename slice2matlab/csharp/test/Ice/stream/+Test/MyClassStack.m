
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassStack
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                os.writeValue(seq{i});
            end
        end
        function r = read(is)
            sz = is.readSize();
            if sz == 0
                r = {};
            else
                r = IceInternal.CellArrayHandle();
                r.array = cell(1, sz);
                for i = 1:sz
                    is.readValue(@(v) r.set(i, v), 'Test.MyClass');
                end
            end
        end
        function r = convert(seq)
            if isempty(seq)
                r = seq;
            else
                r = seq.array;
            end
        end
    end
end
