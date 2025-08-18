classdef (Sealed) TopicContent
    %TOPICCONTENT The contents of topic.
    %
    %   Creation
    %     Syntax
    %       obj = IceStormElection.TopicContent()
    %       obj = IceStormElection.TopicContent(id, records)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   TopicContent Properties:
    %     id - The topic identity.
    %     records - The topic subscribers.
    %
    %   Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The topic identity.
        %   Ice.Identity scalar
        id Ice.Identity {mustBeScalarOrEmpty} = Ice.Identity.empty
        
        % RECORDS The topic subscribers.
        %   IceStorm.SubscriberRecord vector
        records (1, :) IceStorm.SubscriberRecord
    end
    methods
        function obj = TopicContent(id, records)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.id = id;
                obj.records = records;
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
            r = IceStormElection.TopicContent();
            r.id = Ice.Identity.ice_read(is);
            r.records = IceStorm.SubscriberRecordSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStormElection.TopicContent();
            end
            Ice.Identity.ice_write(os, v.id);
            IceStorm.SubscriberRecordSeq.write(os, v.records);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStormElection.TopicContent.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStormElection.TopicContent.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
