
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef break_
    properties
        case_ int32
    end
    methods
        function obj = break_(case_)
            if nargin == 0
                obj.case_ = 0;
            elseif ne(case_, IceInternal.NoInit.Instance)
                obj.case_ = case_;
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
            r = abstract.break_(IceInternal.NoInit.Instance);
            r.case_ = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = abstract.break_();
            end
            os.writeInt(v.case_);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = abstract.break_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                abstract.break_.ice_write(os, v);
            end
        end
    end
end
