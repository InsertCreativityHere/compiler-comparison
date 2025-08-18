classdef (Sealed) AllData
    %ALLDATA
    %
    %   Creation
    %     Syntax
    %       obj = IceStorm.AllData()
    %       obj = IceStorm.AllData(llus, subscribers)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   AllData Properties:
    %     llus
    %     subscribers
    %
    %   Generated from DBTypes.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % LLUS
        %   string, IceStormElection.LogUpdate) scalar
        llus (1, 1) dictionary = configureDictionary('char', 'IceStormElection.LogUpdate')
        
        % SUBSCRIBERS
        %   IceStorm.SubscriberRecordKey, IceStorm.SubscriberRecord) scalar
        subscribers (1, 1) dictionary = configureDictionary('IceStorm.SubscriberRecordKey', 'IceStorm.SubscriberRecord')
    end
    methods
        function obj = AllData(llus, subscribers)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceStorm.AllData();
            r.llus = IceStormElection.StringLogUpdateDict.read(is);
            r.subscribers = IceStorm.SubscriberRecordDict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.AllData();
            end
            IceStormElection.StringLogUpdateDict.write(os, v.llus);
            IceStorm.SubscriberRecordDict.write(os, v.subscribers);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.AllData.ice_read(is);
            else
                r = Ice.Unset;
            end
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
