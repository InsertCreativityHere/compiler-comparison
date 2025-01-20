
% Copyright (c) ZeroC, Inc.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef S1Seq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                LocalTest.S1.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = LocalTest.S1.empty();
            if sz > 0
                r(1, sz) = LocalTest.S1();
                for i = 1:sz
                    c1_ = IceInternal.ValueHolder();
                    r(i).c1 = c1_;
                    is.readValue(@(v_) c1_.set(v_), 'LocalTest.C1');
                end
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).c1 = r(i).c1.value;
            end
        end
    end
end
