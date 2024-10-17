% ElementData   Summary of ElementData
%
% ElementData Properties:
%   id - The id of the writer or reader
%   config - The config of the writer or reader
%   lastIds - The lastIds received by the reader.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementData
    properties
        % id - The id of the writer or reader
        id int64
        % config - The config of the writer or reader
        config
        % lastIds - The lastIds received by the reader.
        lastIds containers.Map
    end
    methods
        function obj = ElementData(id, config, lastIds)
            if nargin == 0
                obj.id = 0;
                obj.config = [];
                obj.lastIds = containers.Map('KeyType', 'int64', 'ValueType', 'int64');
            elseif ne(id, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.ElementData(IceInternal.NoInit.Instance);
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
