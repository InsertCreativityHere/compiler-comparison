classdef (Sealed) ElementData
    %ELEMENTDATA Encapsulates the state and configuration data for a data reader or data writer.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.ElementData()
    %       obj = DataStormContract.ElementData(id, config, lastIds)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ElementData Properties:
    %     id - The unique identifier for the data reader or data writer.
    %     config - The configuration settings for the data reader or data writer.
    %     lastIds - A mapping of data writer IDs to the last sample IDs received by the data reader.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The unique identifier for the data reader or data writer.
        %   int64 scalar
        id (1, 1) int64
        
        % CONFIG The configuration settings for the data reader or data writer.
        %   DataStormContract.ElementConfig scalar | empty array of DataStormContract.ElementConfig
        config {mustBeScalarOrEmpty} = DataStormContract.ElementConfig.empty
        
        % LASTIDS A mapping of data writer IDs to the last sample IDs received by the data reader.
        %
        %   - The key represents the data writer ID.
        %   - The value represents the last sample ID received from the corresponding data writer.
        %   int64, int64) scalar
        lastIds (1, 1) dictionary = configureDictionary('int64', 'int64')
    end
    methods
        function obj = ElementData(id, config, lastIds)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.id = id;
                obj.config = config;
                obj.lastIds = lastIds;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.config = obj.config.value;
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = DataStormContract.ElementData();
            r.id = is.readLong();
            config_ = IceInternal.ValueHolder();
            r.config = config_;
            is.readValue(@(v_) config_.set(v_), 'DataStormContract.ElementConfig');
            r.lastIds = DataStormContract.LongLongDict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.ElementData();
            end
            os.writeLong(v.id);
            os.writeValue(v.config);
            DataStormContract.LongLongDict.write(os, v.lastIds);
        end
    end
end
