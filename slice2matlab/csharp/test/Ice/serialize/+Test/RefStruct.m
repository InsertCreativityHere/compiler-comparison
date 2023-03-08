% RefStruct   Summary of RefStruct
%
% RefStruct Properties:
%   s
%   sp
%   c
%   p
%   seq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef RefStruct
    properties
        s char
        sp char
        c
        p
        seq
    end
    methods
        function obj = RefStruct(s, sp, c, p, seq)
            if nargin == 0
                obj.s = '';
                obj.sp = '';
                obj.c = [];
                obj.p = [];
                obj.seq = [];
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
                obj.sp = sp;
                obj.c = c;
                obj.p = p;
                obj.seq = seq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c = obj.c.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.RefStruct(IceInternal.NoInit.Instance);
            r.s = is.readString();
            r.sp = is.readString();
            c_ = IceInternal.ValueHolder();
            r.c = c_;
            is.readValue(@(v_) c_.set(v_), 'Test.MyClass');
            r.p = Test.MyInterfacePrx.ice_read(is);
            r.seq = Test.ProxySeq.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.RefStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.RefStruct();
            end
            os.writeString(v.s);
            os.writeString(v.sp);
            os.writeValue(v.c);
            os.writeProxy(v.p);
            Test.ProxySeq.write(os, v.seq);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.RefStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
