classdef (Sealed) LinkRecord
    %LINKRECORD Used to store persistent information for Topic federation.
    %
    %   Creation
    %     Syntax
    %       obj = IceStorm.LinkRecord()
    %       obj = IceStorm.LinkRecord(obj, cost, theTopic)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   LinkRecord Properties:
    %     obj - The topic link object.
    %     cost - The cost.
    %     theTopic - The linked topic for getLinkInfoSeq
    %
    %   Generated from LinkRecord.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % OBJ The topic link object.
        %   IceStorm.TopicLinkPrx scalar | empty array of IceStorm.TopicLinkPrx
        obj IceStorm.TopicLinkPrx {mustBeScalarOrEmpty} = IceStorm.TopicLinkPrx.empty
        
        % COST The cost.
        %   int32 scalar
        cost (1, 1) int32
        
        % THETOPIC The linked topic for getLinkInfoSeq
        %   IceStorm.TopicPrx scalar | empty array of IceStorm.TopicPrx
        theTopic IceStorm.TopicPrx {mustBeScalarOrEmpty} = IceStorm.TopicPrx.empty
    end
    methods
        function obj = LinkRecord(obj, cost, theTopic)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceStorm.LinkRecord();
            r.obj = IceStorm.TopicLinkPrx.ice_read(is);
            r.cost = is.readInt();
            r.theTopic = IceStorm.TopicPrx.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.LinkRecord();
            end
            os.writeProxy(v.obj);
            os.writeInt(v.cost);
            os.writeProxy(v.theTopic);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.LinkRecord.ice_read(is);
            else
                r = Ice.Unset;
            end
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
