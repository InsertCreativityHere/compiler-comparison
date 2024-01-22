% SC1   Summary of SC1
%
% SC1 Properties:
%   id

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef SC1
    properties
        id char
    end
    methods
        function obj = SC1(id)
            if nargin == 0
                obj.id = '';
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
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
            r = Test.SC1(IceInternal.NoInit.Instance);
            r.id = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.SC1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.SC1();
            end
            os.writeString(v.id);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.SC1.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
