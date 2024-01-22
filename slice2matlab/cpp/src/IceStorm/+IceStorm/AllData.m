% AllData   Summary of AllData
%
% AllData Properties:
%   llus
%   subscribers

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DBTypes.ice by slice2matlab version 3.8.0-alpha.0

classdef AllData
    properties
        llus containers.Map
        subscribers struct
    end
    methods
        function obj = AllData(llus, subscribers)
            if nargin == 0
                obj.llus = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.subscribers = struct('key', {}, 'value', {});
            elseif ne(llus, IceInternal.NoInit.Instance)
                obj.llus = llus;
                obj.subscribers = subscribers;
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
            r = IceStorm.AllData(IceInternal.NoInit.Instance);
            r.llus = IceStormElection.StringLogUpdateDict.read(is);
            r.subscribers = IceStorm.SubscriberRecordDict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.AllData.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.AllData();
            end
            IceStormElection.StringLogUpdateDict.write(os, v.llus);
            IceStorm.SubscriberRecordDict.write(os, v.subscribers);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.AllData.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
