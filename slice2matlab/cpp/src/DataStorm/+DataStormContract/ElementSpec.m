% ElementSpec   Summary of ElementSpec
%
% Represents detailed information about topic elements, which can be a key or a filter.
%
% ElementSpec Properties:
%   elements - A sequence of data readers and writers associated with the key or filter.
%   id - The unique identifier for the key or filter.
%   name - The name of the filter.
%   value - The encoded value of the key or filter.
%   peerId - The unique identifier for the key or filter on the peer.
%   peerName - The name of the filter on the peer.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementSpec
    properties
        % elements - A sequence of data readers and writers associated with the key or filter.
        elements
        % id - The unique identifier for the key or filter.
        id int64
        % name - The name of the filter.
        % This field is empty if the element is a key.
        name char
        % value - The encoded value of the key or filter.
        value
        % peerId - The unique identifier for the key or filter on the peer.
        peerId int64
        % peerName - The name of the filter on the peer.
        % This field is empty if the element is a key.
        peerName char
    end
    methods
        function obj = ElementSpec(elements, id, name, value, peerId, peerName)
            if nargin == 0
                obj.elements = [];
                obj.id = 0;
                obj.name = '';
                obj.value = [];
                obj.peerId = 0;
                obj.peerName = '';
            elseif ne(elements, IceInternal.NoInit.Instance)
                obj.elements = elements;
                obj.id = id;
                obj.name = name;
                obj.value = value;
                obj.peerId = peerId;
                obj.peerName = peerName;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.elements = DataStormContract.ElementDataSeq.convert(obj.elements);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.ElementSpec(IceInternal.NoInit.Instance);
            r.elements = DataStormContract.ElementDataSeq.read(is);
            r.id = is.readLong();
            r.name = is.readString();
            r.value = is.readByteSeq();
            r.peerId = is.readLong();
            r.peerName = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.ElementSpec();
            end
            DataStormContract.ElementDataSeq.write(os, v.elements);
            os.writeLong(v.id);
            os.writeString(v.name);
            os.writeByteSeq(v.value);
            os.writeLong(v.peerId);
            os.writeString(v.peerName);
        end
    end
end
