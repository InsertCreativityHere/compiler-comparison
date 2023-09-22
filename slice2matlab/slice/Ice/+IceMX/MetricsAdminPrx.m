% MetricsAdminPrx   Summary of MetricsAdminPrx
%
% The metrics administrative facet interface. This interface allows
% remote administrative clients to access metrics of an application
% that enabled the Ice administrative facility and configured some
% metrics views.
%
% MetricsAdminPrx Methods:
%   getMetricsViewNames - Get the names of enabled and disabled metrics.
%   getMetricsViewNamesAsync - Get the names of enabled and disabled metrics.
%   enableMetricsView - Enables a metrics view.
%   enableMetricsViewAsync - Enables a metrics view.
%   disableMetricsView - Disable a metrics view.
%   disableMetricsViewAsync - Disable a metrics view.
%   getMetricsView - Get the metrics objects for the given metrics view.
%   getMetricsViewAsync - Get the metrics objects for the given metrics view.
%   getMapMetricsFailures - Get the metrics failures associated with the given view and map.
%   getMapMetricsFailuresAsync - Get the metrics failures associated with the given view and map.
%   getMetricsFailures - Get the metrics failure associated for the given metrics.
%   getMetricsFailuresAsync - Get the metrics failure associated for the given metrics.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Metrics.ice by slice2matlab version 3.7.10

classdef MetricsAdminPrx < Ice.ObjectPrx
    methods
        function [result, disabledViews] = getMetricsViewNames(obj, varargin)
            % getMetricsViewNames   Get the names of enabled and disabled metrics.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Ice.StringSeq) - The name of the enabled views.
            %   disabledViews (Ice.StringSeq) - The names of the disabled views.
            
            is_ = obj.iceInvoke('getMetricsViewNames', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            disabledViews = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getMetricsViewNamesAsync(obj, varargin)
            % getMetricsViewNamesAsync   Get the names of enabled and disabled metrics.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                disabledViews = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = disabledViews;
            end
            r_ = obj.iceInvokeAsync('getMetricsViewNames', 0, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function enableMetricsView(obj, name, varargin)
            % enableMetricsView   Enables a metrics view.
            %
            % Parameters:
            %   name (char) - The metrics view name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('enableMetricsView', 0, true, os_, false, IceMX.MetricsAdminPrx.enableMetricsView_ex_, varargin{:});
        end
        function r_ = enableMetricsViewAsync(obj, name, varargin)
            % enableMetricsViewAsync   Enables a metrics view.
            %
            % Parameters:
            %   name (char) - The metrics view name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('enableMetricsView', 0, true, os_, 0, [], IceMX.MetricsAdminPrx.enableMetricsView_ex_, varargin{:});
        end
        function disableMetricsView(obj, name, varargin)
            % disableMetricsView   Disable a metrics view.
            %
            % Parameters:
            %   name (char) - The metrics view name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('disableMetricsView', 0, true, os_, false, IceMX.MetricsAdminPrx.disableMetricsView_ex_, varargin{:});
        end
        function r_ = disableMetricsViewAsync(obj, name, varargin)
            % disableMetricsViewAsync   Disable a metrics view.
            %
            % Parameters:
            %   name (char) - The metrics view name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('disableMetricsView', 0, true, os_, 0, [], IceMX.MetricsAdminPrx.disableMetricsView_ex_, varargin{:});
        end
        function [result, timestamp] = getMetricsView(obj, view, varargin)
            % getMetricsView   Get the metrics objects for the given metrics view. This
            % returns a dictionnary of metric maps for each metrics class
            % configured with the view. The timestamp allows the client to
            % compute averages which are not dependent of the invocation
            % latency for this operation.
            %
            % Parameters:
            %   view (char) - The name of the metrics view.
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map) - The metrics view data.
            %   timestamp (int64) - The local time of the process when the metrics
            %     object were retrieved.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getMetricsView', 0, true, os_, true, IceMX.MetricsAdminPrx.getMetricsView_ex_, varargin{:});
            is_.startEncapsulation();
            timestamp = is_.readLong();
            result = IceMX.MetricsView.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = IceMX.MetricsView.convert(result);
        end
        function r_ = getMetricsViewAsync(obj, view, varargin)
            % getMetricsViewAsync   Get the metrics objects for the given metrics view. This
            % returns a dictionnary of metric maps for each metrics class
            % configured with the view. The timestamp allows the client to
            % compute averages which are not dependent of the invocation
            % latency for this operation.
            %
            % Parameters:
            %   view (char) - The name of the metrics view.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                timestamp = is_.readLong();
                result = IceMX.MetricsView.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = IceMX.MetricsView.convert(result);
                varargout{2} = timestamp;
            end
            r_ = obj.iceInvokeAsync('getMetricsView', 0, true, os_, 2, @unmarshal, IceMX.MetricsAdminPrx.getMetricsView_ex_, varargin{:});
        end
        function result = getMapMetricsFailures(obj, view, map, varargin)
            % getMapMetricsFailures   Get the metrics failures associated with the given view and map.
            %
            % Parameters:
            %   view (char) - The name of the metrics view.
            %   map (char) - The name of the metrics map.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceMX.MetricsFailuresSeq) - The metrics failures associated with the map.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            os_.writeString(map);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getMapMetricsFailures', 0, true, os_, true, IceMX.MetricsAdminPrx.getMapMetricsFailures_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceMX.MetricsFailuresSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getMapMetricsFailuresAsync(obj, view, map, varargin)
            % getMapMetricsFailuresAsync   Get the metrics failures associated with the given view and map.
            %
            % Parameters:
            %   view (char) - The name of the metrics view.
            %   map (char) - The name of the metrics map.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            os_.writeString(map);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceMX.MetricsFailuresSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getMapMetricsFailures', 0, true, os_, 1, @unmarshal, IceMX.MetricsAdminPrx.getMapMetricsFailures_ex_, varargin{:});
        end
        function result = getMetricsFailures(obj, view, map, id, varargin)
            % getMetricsFailures   Get the metrics failure associated for the given metrics.
            %
            % Parameters:
            %   view (char) - The name of the metrics view.
            %   map (char) - The name of the metrics map.
            %   id (char) - The ID of the metrics.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceMX.MetricsFailures) - The metrics failures associated with the metrics.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            os_.writeString(map);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getMetricsFailures', 0, true, os_, true, IceMX.MetricsAdminPrx.getMetricsFailures_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceMX.MetricsFailures.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getMetricsFailuresAsync(obj, view, map, id, varargin)
            % getMetricsFailuresAsync   Get the metrics failure associated for the given metrics.
            %
            % Parameters:
            %   view (char) - The name of the metrics view.
            %   map (char) - The name of the metrics map.
            %   id (char) - The ID of the metrics.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceMX.UnknownMetricsView - Raised if the metrics view cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            os_.writeString(map);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceMX.MetricsFailures.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getMetricsFailures', 0, true, os_, 1, @unmarshal, IceMX.MetricsAdminPrx.getMetricsFailures_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceMX::MetricsAdmin';
        end
        function r = ice_read(is)
            r = is.readProxy('IceMX.MetricsAdminPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (IceMX.MetricsAdminPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceMX.MetricsAdminPrx.ice_staticId(), 'IceMX.MetricsAdminPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceMX.MetricsAdminPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceMX.MetricsAdminPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MetricsAdminPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        enableMetricsView_ex_ = { 'IceMX.UnknownMetricsView' }
        disableMetricsView_ex_ = { 'IceMX.UnknownMetricsView' }
        getMetricsView_ex_ = { 'IceMX.UnknownMetricsView' }
        getMapMetricsFailures_ex_ = { 'IceMX.UnknownMetricsView' }
        getMetricsFailures_ex_ = { 'IceMX.UnknownMetricsView' }
    end
end
