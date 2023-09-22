% S4   Summary of S4
%
% S4 Properties:
%   s1seq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.10

classdef S4
    properties
        s1seq
    end
    methods
        function obj = S4(s1seq)
            if nargin == 0
                obj.s1seq = [];
            elseif ne(s1seq, IceInternal.NoInit.Instance)
                obj.s1seq = s1seq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1seq = LocalTest.S1Seq.convert(obj.s1seq);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S4(IceInternal.NoInit.Instance);
            r.s1seq = LocalTest.S1Seq.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S4.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S4();
            end
            LocalTest.S1Seq.write(os, v.s1seq);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S4.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
