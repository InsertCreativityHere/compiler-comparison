classdef (Sealed) ElementSpecAck
    %ELEMENTSPECACK Represents an acknowledgment of the attachment of an element, which can be a key or a filter.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.ElementSpecAck()
    %       obj = DataStormContract.ElementSpecAck(elements, id, name, value, peerId, peerName)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ElementSpecAck Properties:
    %     elements - A sequence of acknowledgments for the readers or writers associated with the key or filter.
    %     id - The unique identifier for the key or filter.
    %     name - The name of the filter.
    %     value - The encoded value of the key or filter.
    %     peerId - The unique identifier for the key or filter on the peer.
    %     peerName - The name of the filter on the peer.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ELEMENTS A sequence of acknowledgments for the readers or writers associated with the key or filter.
        %   DataStormContract.ElementDataAck vector
        elements (1, :) = {}
        
        % ID The unique identifier for the key or filter.
        %   int64 scalar
        id (1, 1) int64
        
        % NAME The name of the filter.
        %   This field is empty if the element is a key.
        %   character vector
        name (1, :) char
        
        % VALUE The encoded value of the key or filter.
        %   uint8 vector
        value (1, :) uint8
        
        % PEERID The unique identifier for the key or filter on the peer.
        %   int64 scalar
        peerId (1, 1) int64
        
        % PEERNAME The name of the filter on the peer.
        %   This field is empty if the element is a key.
        %   character vector
        peerName (1, :) char
    end
    methods
        function obj = ElementSpecAck(elements, id, name, value, peerId, peerName)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
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
            obj.elements = DataStormContract.ElementDataAckSeq.convert(obj.elements);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = DataStormContract.ElementSpecAck();
            r.elements = DataStormContract.ElementDataAckSeq.read(is);
            r.id = is.readLong();
            r.name = is.readString();
            r.value = is.readByteSeq();
            r.peerId = is.readLong();
            r.peerName = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.ElementSpecAck();
            end
            DataStormContract.ElementDataAckSeq.write(os, v.elements);
            os.writeLong(v.id);
            os.writeString(v.name);
            os.writeByteSeq(v.value);
            os.writeLong(v.peerId);
            os.writeString(v.peerName);
        end
    end
end
