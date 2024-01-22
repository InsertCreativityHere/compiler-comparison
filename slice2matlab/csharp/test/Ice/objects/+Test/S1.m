% S1   Summary of S1
%
% S1 Properties:
%   id

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef S1
    properties
        id int32
    end
    methods
        function obj = S1(id)
            if nargin == 0
                obj.id = 0;
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
            r = Test.S1(IceInternal.NoInit.Instance);
            r.id = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.S1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S1();
            end
            os.writeInt(v.id);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                Test.S1.ice_write(os, v);
            end
        end
    end
end
