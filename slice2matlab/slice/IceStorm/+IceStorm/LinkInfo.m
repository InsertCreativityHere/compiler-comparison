classdef (Sealed) LinkInfo
    %LINKINFO Information about a topic link.
    %
    %   Creation
    %     Syntax
    %       obj = IceStorm.LinkInfo()
    %       obj = IceStorm.LinkInfo(theTopic, name, cost)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   LinkInfo Properties:
    %     theTopic - The linked topic proxy.
    %     name - The name of the linked topic.
    %     cost - The cost of traversing this link.
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THETOPIC The linked topic proxy. This proxy is never null.
        %   IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
        theTopic IceStorm.TopicPrx {mustBeScalarOrEmpty} = IceStorm.TopicPrx.empty
        
        % NAME The name of the linked topic.
        %   character vector
        name (1, :) char
        
        % COST The cost of traversing this link.
        %   int32 scalar
        cost (1, 1) int32
    end
    methods
        function obj = LinkInfo(theTopic, name, cost)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceStorm.LinkInfo();
            r.theTopic = IceStorm.TopicPrx.ice_read(is);
            r.name = is.readString();
            r.cost = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.LinkInfo();
            end
            os.writeProxy(v.theTopic);
            os.writeString(v.name);
            os.writeInt(v.cost);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.LinkInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
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
