classdef ElementConfig < Ice.Value
    %ELEMENTCONFIG Represents the configuration of a data reader or data writer, including optional filters and priorities.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.ElementConfig()
    %       obj = DataStormContract.ElementConfig(facet, sampleFilter, name, priority, sampleCount, sampleLifetime, clearHistory)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ElementConfig Properties:
    %     facet - A facet that is used to process the samples when sample filtering is enabled.
    %     sampleFilter - An optional sample filter associated with the reader.
    %     name - An optional name for the reader or writer.
    %     priority - An optional priority for the writer.
    %     sampleCount - An optional sample count, specifying the number of samples queued in the writer or reader sample queue.
    %     sampleLifetime - An optional lifetime, specified in milliseconds, representing the maximum time samples are kept in the writer or reader sample queue.
    %     clearHistory - An optional clear history policy that determines when the reader or writer sample history is cleared.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FACET A facet that is used to process the samples when sample filtering is enabled.
        %   character vector | Ice.Unset
        facet (1, :) = IceInternal.UnsetI.Instance
        
        % SAMPLEFILTER An optional sample filter associated with the reader. Sample filters are specified on the reader side.
        %   DataStormContract.FilterInfo scalar | Ice.Unset
        sampleFilter {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % NAME An optional name for the reader or writer.
        %   character vector | Ice.Unset
        name (1, :) = IceInternal.UnsetI.Instance
        
        % PRIORITY An optional priority for the writer.
        %   See also the `DataStorm.Topic.Priority` property.
        %   int32 scalar | Ice.Unset
        priority (1, 1) = IceInternal.UnsetI.Instance
        
        % SAMPLECOUNT An optional sample count, specifying the number of samples queued in the writer or reader sample queue.
        %   See also the `DataStorm.Topic.SampleCount` property.
        %   int32 scalar | Ice.Unset
        sampleCount (1, 1) = IceInternal.UnsetI.Instance
        
        % SAMPLELIFETIME An optional lifetime, specified in milliseconds, representing the maximum time samples are kept in the
        %   writer or reader sample queue. See also the `DataStorm.Topic.SampleLifetime` property.
        %   int32 scalar | Ice.Unset
        sampleLifetime (1, 1) = IceInternal.UnsetI.Instance
        
        % CLEARHISTORY An optional clear history policy that determines when the reader or writer sample history is cleared.
        %   See also the `DataStorm.Topic.ClearHistory` property.
        %   DataStormContract.ClearHistoryPolicy scalar | Ice.Unset
        clearHistory (1, 1) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = ElementConfig(facet, sampleFilter, name, priority, sampleCount, sampleLifetime, clearHistory)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
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
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::DataStormContract::ElementConfig';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::DataStormContract::ElementConfig'
        CompactId char = '1'
    end
end
