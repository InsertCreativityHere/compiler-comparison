% break_   Summary of break_
%
% break_ Properties:
%   while_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef break_
    properties
        while_ int32
    end
    methods
        function obj = break_(while_)
            if nargin == 0
                obj.while_ = 0;
            elseif ne(while_, IceInternal.NoInit.Instance)
                obj.while_ = while_;
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
            r = await.break_(IceInternal.NoInit.Instance);
            r.while_ = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = await.break_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = await.break_();
            end
            os.writeInt(v.while_);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(4);
                await.break_.ice_write(os, v);
            end
        end
    end
end
