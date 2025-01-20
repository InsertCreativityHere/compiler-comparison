% ElementConfig   Summary of ElementConfig
%
% Represents the configuration of a data reader or data writer, including optional filters and priorities.
%
% ElementConfig Properties:
%   facet - A facet that is used to process the samples when sample filtering is enabled.
%   sampleFilter - An optional sample filter associated with the reader.
%   name - An optional name for the reader or writer.
%   priority - An optional priority for the writer.
%   sampleCount - An optional sample count, specifying the number of samples queued in the writer or reader sample queue.
%   sampleLifetime - An optional lifetime, specified in milliseconds, representing the maximum time samples are kept in the writer or reader sample queue.
%   clearHistory - An optional clear history policy that determines when the reader or writer sample history is cleared.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementConfig < Ice.Value
    properties
        % facet - A facet that is used to process the samples when sample filtering is enabled.
        facet
        % sampleFilter - An optional sample filter associated with the reader. Sample filters are specified on the reader side.
        sampleFilter
        % name - An optional name for the reader or writer.
        name
        % priority - An optional priority for the writer.
        % See also the `DataStorm.Topic.Priority` property.
        priority
        % sampleCount - An optional sample count, specifying the number of samples queued in the writer or reader sample queue.
        % See also the `DataStorm.Topic.SampleCount` property.
        sampleCount
        % sampleLifetime - An optional lifetime, specified in milliseconds, representing the maximum time samples are kept in the
        % writer or reader sample queue. See also the `DataStorm.Topic.SampleLifetime` property.
        sampleLifetime
        % clearHistory - An optional clear history policy that determines when the reader or writer sample history is cleared.
        % See also the `DataStorm.Topic.ClearHistory` property.
        clearHistory
    end
    methods
        function obj = ElementConfig(facet, sampleFilter, name, priority, sampleCount, sampleLifetime, clearHistory)
            if nargin == 0
                obj.facet = IceInternal.UnsetI.Instance;
                obj.sampleFilter = IceInternal.UnsetI.Instance;
                obj.name = IceInternal.UnsetI.Instance;
                obj.priority = IceInternal.UnsetI.Instance;
                obj.sampleCount = IceInternal.UnsetI.Instance;
                obj.sampleLifetime = IceInternal.UnsetI.Instance;
                obj.clearHistory = IceInternal.UnsetI.Instance;
            elseif ne(facet, IceInternal.NoInit.Instance)
                obj.facet = facet;
                obj.sampleFilter = sampleFilter;
                obj.name = name;
                obj.priority = priority;
                obj.sampleCount = sampleCount;
                obj.sampleLifetime = sampleLifetime;
                obj.clearHistory = clearHistory;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::DataStormContract::ElementConfig', 1, true);
            os.writeStringOpt(1, obj.facet);
            DataStormContract.FilterInfo.ice_writeOpt(os, 2, obj.sampleFilter);
            os.writeStringOpt(3, obj.name);
            os.writeIntOpt(4, obj.priority);
            os.writeIntOpt(10, obj.sampleCount);
            os.writeIntOpt(11, obj.sampleLifetime);
            DataStormContract.ClearHistoryPolicy.ice_writeOpt(os, 12, obj.clearHistory);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.facet = is.readStringOpt(1);
            obj.sampleFilter = DataStormContract.FilterInfo.ice_readOpt(is, 2);
            obj.name = is.readStringOpt(3);
            obj.priority = is.readIntOpt(4);
            obj.sampleCount = is.readIntOpt(10);
            obj.sampleLifetime = is.readIntOpt(11);
            obj.clearHistory = DataStormContract.ClearHistoryPolicy.ice_readOpt(is, 12);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::DataStormContract::ElementConfig';
        end
    end
end
