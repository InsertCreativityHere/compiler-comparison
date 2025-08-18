
classdef (Hidden) SubscriberRecordDict
    %SUBSCRIBERRECORDDICT Marshaling and unmarshaling support code for dictionary<::IceStorm::SubscriberRecordKey, ::IceStorm::SubscriberRecord>.
    %
    %   Generated from DBTypes.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = SubscriberRecordDict()
        end
    end
    methods (Static)
        function write(os, d)
            if isempty(d)
                os.writeSize(0);
            else
                sz = d.numEntries;
                os.writeSize(sz);
                entries = d.entries;
                for i = 1:sz
                    IceStorm.SubscriberRecordKey.ice_write(os, entries{i, 1});
                    IceStorm.SubscriberRecord.ice_write(os, entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('IceStorm.SubscriberRecordKey', 'IceStorm.SubscriberRecord');
            for i = 1:sz
                k = IceStorm.SubscriberRecordKey.ice_read(is);
                v = IceStorm.SubscriberRecord.ice_read(is);
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.SubscriberRecordDict.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.SubscriberRecordDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
