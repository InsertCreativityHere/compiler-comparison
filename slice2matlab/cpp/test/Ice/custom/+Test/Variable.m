
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Variable
    properties
        s char
        bl
        ss
    end
    methods
        function obj = Variable(s, bl, ss)
            if nargin == 0
                obj.s = '';
                obj.bl = [];
                obj.ss = [];
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
                obj.bl = bl;
                obj.ss = ss;
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
            r = Test.Variable(IceInternal.NoInit.Instance);
            r.s = is.readString();
            r.bl = is.readBoolSeq();
            r.ss = is.readStringSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Variable();
            end
            os.writeString(v.s);
            os.writeBoolSeq(v.bl);
            os.writeStringSeq(v.ss);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Variable.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Variable.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
