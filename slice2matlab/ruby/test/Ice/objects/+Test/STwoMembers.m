% STwoMembers   Summary of STwoMembers
%
% STwoMembers Properties:
%   e1
%   e2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.7.10

classdef STwoMembers
    properties
        e1
        e2
    end
    methods
        function obj = STwoMembers(e1, e2)
            if nargin == 0
                obj.e1 = [];
                obj.e2 = [];
            elseif ne(e1, IceInternal.NoInit.Instance)
                obj.e1 = e1;
                obj.e2 = e2;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.e1 = obj.e1.value;
            obj.e2 = obj.e2.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.STwoMembers(IceInternal.NoInit.Instance);
            e1_ = IceInternal.ValueHolder();
            r.e1 = e1_;
            is.readValue(@(v_) e1_.set(v_), 'Test.Empty');
            e2_ = IceInternal.ValueHolder();
            r.e2 = e2_;
            is.readValue(@(v_) e2_.set(v_), 'Test.Empty');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.STwoMembers.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.STwoMembers();
            end
            os.writeValue(v.e1);
            os.writeValue(v.e2);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.STwoMembers.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
