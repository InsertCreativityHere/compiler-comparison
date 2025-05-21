
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef break
    properties
        case int32
    end
    methods
        function obj = break(case)
            if nargin == 0
                obj.case = 0;
            elseif ne(case, IceInternal.NoInit.Instance)
                obj.case = case;
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
            r = abstract.break(IceInternal.NoInit.Instance);
            r.case = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = abstract.break();
            end
            os.writeInt(v.case);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = abstract.break.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                abstract.break.ice_write(os, v);
            end
        end
    end
end
