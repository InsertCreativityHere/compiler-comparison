% S   Summary of S
%
% S Properties:
%   b1
%   b2
%   b3
%   b4
%   s1
%   s2
%   s3
%   s4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef S
    properties
        b1
        b2
        b3
        b4
        s1
        s2
        s3
        s4
    end
    methods
        function obj = S(b1, b2, b3, b4, s1, s2, s3, s4)
            if nargin == 0
                obj.b1 = [];
                obj.b2 = [];
                obj.b3 = [];
                obj.b4 = [];
                obj.s1 = [];
                obj.s2 = [];
                obj.s3 = [];
                obj.s4 = [];
            elseif ne(b1, IceInternal.NoInit.Instance)
                obj.b1 = b1;
                obj.b2 = b2;
                obj.b3 = b3;
                obj.b4 = b4;
                obj.s1 = s1;
                obj.s2 = s2;
                obj.s3 = s3;
                obj.s4 = s4;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.S(IceInternal.NoInit.Instance);
            r.b1 = is.readByteSeq();
            r.b2 = is.readByteSeq();
            r.b3 = is.readByteSeq();
            r.b4 = is.readByteSeq();
            r.s1 = is.readStringSeq();
            r.s2 = is.readStringSeq();
            r.s3 = is.readStringSeq();
            r.s4 = is.readStringSeq();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeByteSeq(v.b1);
            os.writeByteSeq(v.b2);
            os.writeByteSeq(v.b3);
            os.writeByteSeq(v.b4);
            os.writeStringSeq(v.s1);
            os.writeStringSeq(v.s2);
            os.writeStringSeq(v.s3);
            os.writeStringSeq(v.s4);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
