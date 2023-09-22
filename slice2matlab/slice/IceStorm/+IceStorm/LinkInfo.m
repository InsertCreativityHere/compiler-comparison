% LinkInfo   Summary of LinkInfo
%
% Information on the topic links.
%
% LinkInfo Properties:
%   theTopic - The linked topic.
%   name - The name of the linked topic.
%   cost - The cost of traversing this link.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.10

classdef LinkInfo
    properties
        % theTopic - The linked topic.
        theTopic
        % name - The name of the linked topic.
        name char
        % cost - The cost of traversing this link.
        cost int32
    end
    methods
        function obj = LinkInfo(theTopic, name, cost)
            if nargin == 0
                obj.theTopic = [];
                obj.name = '';
                obj.cost = 0;
            elseif ne(theTopic, IceInternal.NoInit.Instance)
                obj.theTopic = theTopic;
                obj.name = name;
                obj.cost = cost;
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
            r = IceStorm.LinkInfo(IceInternal.NoInit.Instance);
            r.theTopic = IceStorm.TopicPrx.ice_read(is);
            r.name = is.readString();
            r.cost = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.LinkInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.LinkInfo();
            end
            os.writeProxy(v.theTopic);
            os.writeString(v.name);
            os.writeInt(v.cost);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.LinkInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
