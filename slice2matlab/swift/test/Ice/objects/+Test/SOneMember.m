% SOneMember   Summary of SOneMember
%
% SOneMember Properties:
%   e

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef SOneMember
    properties
        e
    end
    methods
        function obj = SOneMember(e)
            if nargin == 0
                obj.e = [];
            elseif ne(e, IceInternal.NoInit.Instance)
                obj.e = e;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.e = obj.e.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.SOneMember(IceInternal.NoInit.Instance);
            e_ = IceInternal.ValueHolder();
            r.e = e_;
            is.readValue(@(v_) e_.set(v_), 'Test.Empty');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.SOneMember.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.SOneMember();
            end
            os.writeValue(v.e);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.SOneMember.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
