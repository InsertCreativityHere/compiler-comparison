classdef MetricsAdminPrx < Ice.ObjectPrx
    %METRICSADMINPRX The metrics administrative facet interface. This interface allows remote administrative clients to access the
    %   metrics of an application that enabled the Ice administrative facility and configured one or more metrics views.
    %
    %   Creation
    %     Syntax
    %       prx = IceMX.MetricsAdminPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MetricsAdminPrx Methods:
    %     disableMetricsView - Disables a metrics view.
    %     disableMetricsViewAsync - An asynchronous disableMetricsView.
    %     enableMetricsView - Enables a metrics view.
    %     enableMetricsViewAsync - An asynchronous enableMetricsView.
    %     getMapMetricsFailures - Gets the metrics failures associated with the given view and map.
    %     getMapMetricsFailuresAsync - An asynchronous getMapMetricsFailures.
    %     getMetricsFailures - Gets the metrics failure associated for the given metrics.
    %     getMetricsFailuresAsync - An asynchronous getMetricsFailures.
    %     getMetricsView - Gets the metrics objects for the given metrics view.
    %     getMetricsViewAsync - An asynchronous getMetricsView.
    %     getMetricsViewNames - Gets the names of enabled and disabled metrics.
    %     getMetricsViewNamesAsync - An asynchronous getMetricsViewNames.
    %
    %   MetricsAdminPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceMX::MetricsAdmin.
    %     uncheckedCast - Creates a MetricsAdminPrx from another proxy without any validation.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, disabledViews] = getMetricsViewNames(obj, context)
            %GETMETRICSVIEWNAMES Gets the names of enabled and disabled metrics.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The name of the enabled views.
            %       string vector
            %     disabledViews - The names of the disabled views.
            %       string vector
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getMetricsViewNames', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            disabledViews = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getMetricsViewNamesAsync(obj, context)
            %GETMETRICSVIEWNAMESASYNC Gets the names of enabled and disabled metrics.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getMetricsViewNames, Ice.Future.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                disabledViews = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = disabledViews;
            end
            future = obj.iceInvokeAsync('getMetricsViewNames', 0, true, [], 2, @unmarshal, {}, context);
        end

        function enableMetricsView(obj, name, context)
            %ENABLEMETRICSVIEW Enables a metrics view.
            %
            %   Input Arguments
            %     name - The metrics view name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceMX.UnknownMetricsView - Thrown when the metrics view cannot be found.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('enableMetricsView', 0, true, os_, false, IceMX.MetricsAdminPrx.enableMetricsView_ex_, context);
        end

        function future = enableMetricsViewAsync(obj, name, context)
            %ENABLEMETRICSVIEWASYNC Enables a metrics view.
            %
            %   Input Arguments
            %     name - The metrics view name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also enableMetricsView, Ice.Future.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('enableMetricsView', 0, true, os_, 0, [], IceMX.MetricsAdminPrx.enableMetricsView_ex_, context);
        end

        function disableMetricsView(obj, name, context)
            %DISABLEMETRICSVIEW Disables a metrics view.
            %
            %   Input Arguments
            %     name - The metrics view name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceMX.UnknownMetricsView - Thrown when the metrics view cannot be found.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('disableMetricsView', 0, true, os_, false, IceMX.MetricsAdminPrx.disableMetricsView_ex_, context);
        end

        function future = disableMetricsViewAsync(obj, name, context)
            %DISABLEMETRICSVIEWASYNC Disables a metrics view.
            %
            %   Input Arguments
            %     name - The metrics view name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also disableMetricsView, Ice.Future.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('disableMetricsView', 0, true, os_, 0, [], IceMX.MetricsAdminPrx.disableMetricsView_ex_, context);
        end

        function [returnValue, timestamp] = getMetricsView(obj, view, context)
            %GETMETRICSVIEW Gets the metrics objects for the given metrics view.
            %
            %   Input Arguments
            %     view - The name of the metrics view.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The metrics view data, a dictionary of metric maps for each metrics class configured with the view.
            %       The timestamp allows the client to compute averages which are not dependent of the invocation latency for
            %       this operation.
            %       string, cell) scalar
            %     timestamp - The local time of the process when the metrics object were retrieved.
            %       int64 scalar
            %
            %   Exceptions
            %     IceMX.UnknownMetricsView - Thrown when the metrics view cannot be found.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                view (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getMetricsView', 0, true, os_, true, IceMX.MetricsAdminPrx.getMetricsView_ex_, context);
            is_.startEncapsulation();
            timestamp = is_.readLong();
            returnValue = IceMX.MetricsView.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = IceMX.MetricsView.convert(returnValue);
        end

        function future = getMetricsViewAsync(obj, view, context)
            %GETMETRICSVIEWASYNC Gets the metrics objects for the given metrics view.
            %
            %   Input Arguments
            %     view - The name of the metrics view.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getMetricsView, Ice.Future.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                view (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(view);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                timestamp = is_.readLong();
                returnValue = IceMX.MetricsView.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = IceMX.MetricsView.convert(returnValue);
                varargout{2} = timestamp;
            end
            future = obj.iceInvokeAsync('getMetricsView', 0, true, os_, 2, @unmarshal, IceMX.MetricsAdminPrx.getMetricsView_ex_, context);
        end

        function returnValue = getMapMetricsFailures(obj, view, map, context)
            %GETMAPMETRICSFAILURES Gets the metrics failures associated with the given view and map.
            %
            %   Input Arguments
            %     view - The name of the metrics view.
            %       character vector
            %     map - The name of the metrics map.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The metrics failures associated with the map.
            %       IceMX.MetricsFailures vector
            %
            %   Exceptions
            %     IceMX.UnknownMetricsView - Thrown when the metrics view cannot be found.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                view (1, :) char
                map (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(view);
            os_.writeString(map);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getMapMetricsFailures', 0, true, os_, true, IceMX.MetricsAdminPrx.getMapMetricsFailures_ex_, context);
            is_.startEncapsulation();
            returnValue = IceMX.MetricsFailuresSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getMapMetricsFailuresAsync(obj, view, map, context)
            %GETMAPMETRICSFAILURESASYNC Gets the metrics failures associated with the given view and map.
            %
            %   Input Arguments
            %     view - The name of the metrics view.
            %       character vector
            %     map - The name of the metrics map.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getMapMetricsFailures, Ice.Future.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                view (1, :) char
                map (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(view);
            os_.writeString(map);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceMX.MetricsFailuresSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getMapMetricsFailures', 0, true, os_, 1, @unmarshal, IceMX.MetricsAdminPrx.getMapMetricsFailures_ex_, context);
        end

        function returnValue = getMetricsFailures(obj, view, map, id, context)
            %GETMETRICSFAILURES Gets the metrics failure associated for the given metrics.
            %
            %   Input Arguments
            %     view - The name of the metrics view.
            %       character vector
            %     map - The name of the metrics map.
            %       character vector
            %     id - The ID of the metrics.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The metrics failures associated with the metrics.
            %       IceMX.MetricsFailures scalar
            %
            %   Exceptions
            %     IceMX.UnknownMetricsView - Thrown when the metrics view cannot be found.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                view (1, :) char
                map (1, :) char
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(view);
            os_.writeString(map);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getMetricsFailures', 0, true, os_, true, IceMX.MetricsAdminPrx.getMetricsFailures_ex_, context);
            is_.startEncapsulation();
            returnValue = IceMX.MetricsFailures.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getMetricsFailuresAsync(obj, view, map, id, context)
            %GETMETRICSFAILURESASYNC Gets the metrics failure associated for the given metrics.
            %
            %   Input Arguments
            %     view - The name of the metrics view.
            %       character vector
            %     map - The name of the metrics map.
            %       character vector
            %     id - The ID of the metrics.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getMetricsFailures, Ice.Future.
            
            arguments
                obj (1, 1) IceMX.MetricsAdminPrx
                view (1, :) char
                map (1, :) char
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(view);
            os_.writeString(map);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceMX.MetricsFailures.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getMetricsFailures', 0, true, os_, 1, @unmarshal, IceMX.MetricsAdminPrx.getMetricsFailures_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::MetricsAdmin';
        end

        function r = ice_read(is)
            r = is.readProxy('IceMX.MetricsAdminPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceMX::MetricsAdmin.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A IceMX.MetricsAdminPrx scalar if the target object implements Slice interface 
            %       ::IceMX::MetricsAdmin; otherwise, an empty array of IceMX.MetricsAdminPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceMX.MetricsAdminPrx.ice_staticId(), 'IceMX.MetricsAdminPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceMX.MetricsAdminPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceMX.MetricsAdminPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceMX.MetricsAdminPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        enableMetricsView_ex_ = { 'IceMX.UnknownMetricsView' }
        disableMetricsView_ex_ = { 'IceMX.UnknownMetricsView' }
        getMetricsView_ex_ = { 'IceMX.UnknownMetricsView' }
        getMapMetricsFailures_ex_ = { 'IceMX.UnknownMetricsView' }
        getMetricsFailures_ex_ = { 'IceMX.UnknownMetricsView' }
    end
end
