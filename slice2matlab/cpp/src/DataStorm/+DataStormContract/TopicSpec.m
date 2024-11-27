% TopicSpec   Summary of TopicSpec
%
% Provides detailed information about topic readers and topic writers, including its ID, name, keys, filters,
% and tags.
%
% TopicSpec Properties:
%   id - The ID of the topic.
%   name - The name of the topic.
%   elements - The topic's keys and filters.
%   tags - The topic update tags.
%
% See also DataStormContract.Session.attachTopic

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicSpec
    properties
        % id - The ID of the topic.
        id int64
        % name - The name of the topic.
        name char
        % elements - The topic's keys and filters.
        elements
        % tags - The topic update tags.
        tags
    end
    methods
        function obj = TopicSpec(id, name, elements, tags)
            if nargin == 0
                obj.id = 0;
                obj.name = '';
                obj.elements = [];
                obj.tags = [];
            elseif ne(id, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.TopicSpec(IceInternal.NoInit.Instance);
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
