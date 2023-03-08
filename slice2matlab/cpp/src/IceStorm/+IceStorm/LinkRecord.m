% LinkRecord   Summary of LinkRecord
%
% Used to store persistent information for Topic federation.
%
% LinkRecord Properties:
%   obj
%   cost
%   theTopic

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LinkRecord.ice by slice2matlab version 3.7.9

classdef LinkRecord
    properties
        obj
        cost int32
        theTopic
    end
    methods
        function obj = LinkRecord(obj, cost, theTopic)
            if nargin == 0
                obj.obj = [];
                obj.cost = 0;
                obj.theTopic = [];
            elseif ne(obj, IceInternal.NoInit.Instance)
                obj.obj = obj;
                obj.cost = cost;
                obj.theTopic = theTopic;
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
            r = IceStorm.LinkRecord(IceInternal.NoInit.Instance);
            r.obj = IceStorm.TopicLinkPrx.ice_read(is);
            r.cost = is.readInt();
            r.theTopic = IceStorm.TopicPrx.ice_read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.LinkRecord.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.LinkRecord();
            end
            os.writeProxy(v.obj);
            os.writeInt(v.cost);
            os.writeProxy(v.theTopic);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.LinkRecord.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
