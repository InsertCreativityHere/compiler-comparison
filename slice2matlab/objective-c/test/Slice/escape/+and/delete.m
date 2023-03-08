% delete   Summary of delete
%
% delete Properties:
%   else_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef delete
    properties
        else_ char
    end
    methods
        function obj = delete(else_)
            if nargin == 0
                obj.else_ = '';
            elseif ne(else_, IceInternal.NoInit.Instance)
                obj.else_ = else_;
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
            r = and.delete(IceInternal.NoInit.Instance);
            r.else_ = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = and.delete.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = and.delete();
            end
            os.writeString(v.else_);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                and.delete.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
