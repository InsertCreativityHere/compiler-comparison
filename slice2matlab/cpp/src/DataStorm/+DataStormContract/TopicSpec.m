classdef (Sealed) TopicSpec
    %TOPICSPEC Provides detailed information about topic readers and topic writers, including its ID, name, keys, filters,
    %   and tags.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.TopicSpec()
    %       obj = DataStormContract.TopicSpec(id, name, elements, tags)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   TopicSpec Properties:
    %     id - The unique identifier for the topic.
    %     name - The name of the topic.
    %     elements - The topic's keys and filters.
    %     tags - The topic update tags.
    %
    %   See also DataStormContract.Session.attachTopic
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The unique identifier for the topic.
        %   The ID uniquely identifies a topic reader or topic writer within a node.
        %   int64 scalar
        id (1, 1) int64
        
        % NAME The name of the topic.
        %   character vector
        name (1, :) char
        
        % ELEMENTS The topic's keys and filters.
        %   DataStormContract.ElementInfo vector
        elements (1, :) DataStormContract.ElementInfo
        
        % TAGS The topic update tags.
        %   DataStormContract.ElementInfo vector
        tags (1, :) DataStormContract.ElementInfo
    end
    methods
        function obj = TopicSpec(id, name, elements, tags)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.id = id;
                obj.name = name;
                obj.elements = elements;
                obj.tags = tags;
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
            r = DataStormContract.TopicSpec();
            r.id = is.readLong();
            r.name = is.readString();
            r.elements = DataStormContract.ElementInfoSeq.read(is);
            r.tags = DataStormContract.ElementInfoSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.TopicSpec();
            end
            os.writeLong(v.id);
            os.writeString(v.name);
            DataStormContract.ElementInfoSeq.write(os, v.elements);
            DataStormContract.ElementInfoSeq.write(os, v.tags);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.TopicSpec.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.TopicSpec.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
