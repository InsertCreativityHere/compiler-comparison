classdef (Sealed) GroupInfo
    %GROUPINFO The group info.
    %
    %   Creation
    %     Syntax
    %       obj = IceStormElection.GroupInfo()
    %       obj = IceStormElection.GroupInfo(id, llu)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   GroupInfo Properties:
    %     id - The identity of the node.
    %     llu - The last known log update for this node.
    %
    %   Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The identity of the node.
        %   int32 scalar
        id (1, 1) int32
        
        % LLU The last known log update for this node.
        %   IceStormElection.LogUpdate scalar
        llu IceStormElection.LogUpdate {mustBeScalarOrEmpty} = IceStormElection.LogUpdate.empty
    end
    methods
        function obj = GroupInfo(id, llu)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.id = id;
                obj.llu = llu;
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
            r = IceStormElection.GroupInfo();
            r.id = is.readInt();
            r.llu = IceStormElection.LogUpdate.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStormElection.GroupInfo();
            end
            os.writeInt(v.id);
            IceStormElection.LogUpdate.ice_write(os, v.llu);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = IceStormElection.GroupInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(20);
                IceStormElection.GroupInfo.ice_write(os, v);
            end
        end
    end
end
