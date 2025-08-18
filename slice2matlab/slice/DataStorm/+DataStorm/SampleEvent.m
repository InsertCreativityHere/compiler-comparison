classdef SampleEvent < uint8
    %SAMPLEEVENT Describes the operation used by a data writer to update a data element.
    %
    %   SampleEvent Properties:
    %     Add - The data writer added the element.
    %     Update - The data writer updated the element.
    %     PartialUpdate - The data writer partially updated the element.
    %     Remove - The data writer removed the element.
    %
    %   Generated from SampleEvent.ice by slice2matlab version 3.8.0-alpha.0

    enumeration
        %ADD The data writer added the element.
        Add (0)
        
        %UPDATE The data writer updated the element.
        Update (1)
        
        %PARTIALUPDATE The data writer partially updated the element.
        PartialUpdate (2)
        
        %REMOVE The data writer removed the element.
        Remove (3)
    end
    methods (Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(DataStorm.SampleEvent.Add), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = DataStorm.SampleEvent.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                DataStorm.SampleEvent.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = DataStorm.SampleEvent.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = DataStorm.SampleEvent.Add;
                case 1
                    r = DataStorm.SampleEvent.Update;
                case 2
                    r = DataStorm.SampleEvent.PartialUpdate;
                case 3
                    r = DataStorm.SampleEvent.Remove;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
