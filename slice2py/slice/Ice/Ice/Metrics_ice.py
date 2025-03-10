# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Metrics.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins
import Ice.BuiltinSequences_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module IceMX
_M_IceMX = Ice.openModule('IceMX')
__name__ = 'IceMX'
_M_IceMX.__doc__ = """
The Ice Management eXtension facility. It provides the `IceMX.MetricsAdmin` interface for management clients
to retrieve metrics from Ice applications.
"""

if '_t_StringIntDict' not in _M_IceMX.__dict__:
    _M_IceMX._t_StringIntDict = IcePy.defineDictionary('::IceMX::StringIntDict', (), IcePy._t_string, IcePy._t_int)

if 'Metrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_Metrics = IcePy.declareValue('::IceMX::Metrics')

if 'Metrics' not in _M_IceMX.__dict__:
    _M_IceMX.Metrics = None
    class Metrics(Ice.Value):
        """
        The base class for metrics. A metrics object represents a collection of measurements associated to a given a
        system.
        
        Attributes
        ----------
        id : str
            The metrics identifier.
        total : int
            The total number of objects observed by this metrics. This includes the number of currently observed objects
            and the number of objects observed in the past.
        current : int
            The number of objects currently observed by this metrics.
        totalLifetime : int
            The sum of the lifetime of each observed objects. This does not include the lifetime of objects which are
            currently observed, only the objects observed in the past.
        failures : int
            The number of failures observed.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0):
            self.id = id
            self.total = total
            self.current = current
            self.totalLifetime = totalLifetime
            self.failures = failures

        def ice_id(self):
            return '::IceMX::Metrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::Metrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_Metrics)

        __repr__ = __str__

    _M_IceMX._t_Metrics = IcePy.defineValue('::IceMX::Metrics', Metrics, -1, (), False, None, (
        ('id', (), IcePy._t_string, False, 0),
        ('total', (), IcePy._t_long, False, 0),
        ('current', (), IcePy._t_int, False, 0),
        ('totalLifetime', (), IcePy._t_long, False, 0),
        ('failures', (), IcePy._t_int, False, 0)
    ))
    Metrics._ice_type = _M_IceMX._t_Metrics

    _M_IceMX.Metrics = Metrics
    del Metrics

if 'MetricsFailures' not in _M_IceMX.__dict__:
    _M_IceMX.MetricsFailures = None
    class MetricsFailures(object):
        """
        A structure to keep track of failures associated with a given metrics.
        
        Attributes
        ----------
        id : str
            The identifier of the metrics object associated to the failures.
        failures : dict where keys are str and values are int
            The failures observed for this metrics.
        """
        def __init__(self, id='', failures=None):
            self.id = id
            self.failures = failures

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_IceMX.MetricsFailures):
                return NotImplemented
            else:
                if self.id != other.id:
                    return False
                if self.failures != other.failures:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_MetricsFailures)

        __repr__ = __str__

    _M_IceMX._t_MetricsFailures = IcePy.defineStruct('::IceMX::MetricsFailures', MetricsFailures, (), (
        ('id', (), IcePy._t_string),
        ('failures', (), _M_IceMX._t_StringIntDict)
    ))

    _M_IceMX.MetricsFailures = MetricsFailures
    del MetricsFailures

if '_t_MetricsFailuresSeq' not in _M_IceMX.__dict__:
    _M_IceMX._t_MetricsFailuresSeq = IcePy.defineSequence('::IceMX::MetricsFailuresSeq', (), _M_IceMX._t_MetricsFailures)

if '_t_MetricsMap' not in _M_IceMX.__dict__:
    _M_IceMX._t_MetricsMap = IcePy.defineSequence('::IceMX::MetricsMap', (), _M_IceMX._t_Metrics)

if '_t_MetricsView' not in _M_IceMX.__dict__:
    _M_IceMX._t_MetricsView = IcePy.defineDictionary('::IceMX::MetricsView', (), IcePy._t_string, _M_IceMX._t_MetricsMap)

if 'UnknownMetricsView' not in _M_IceMX.__dict__:
    _M_IceMX.UnknownMetricsView = None
    class UnknownMetricsView(Ice.UserException):
        """
        Raised if a metrics view cannot be found.
        """
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::IceMX::UnknownMetricsView'

    _M_IceMX._t_UnknownMetricsView = IcePy.defineException('::IceMX::UnknownMetricsView', UnknownMetricsView, (), None, ())
    UnknownMetricsView._ice_type = _M_IceMX._t_UnknownMetricsView

    _M_IceMX.UnknownMetricsView = UnknownMetricsView
    del UnknownMetricsView

if 'MetricsAdmin' not in _M_IceMX.__dict__:
    _M_IceMX._t_MetricsAdminPrx = IcePy.declareProxy('::IceMX::MetricsAdmin')

if 'MetricsAdminPrx' not in _M_IceMX.__dict__:
    _M_IceMX.MetricsAdminPrx = None
    class MetricsAdminPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new MetricsAdminPrx proxy
            
            Parameters
            ----------
            communicator : Ice.Communicator
                The communicator of the new proxy.
            proxyString : str
                The string representation of the proxy.
            
            Raises
            ------
            ParseException
                Thrown when proxyString is not a valid proxy string.
            """
            super().__init__(communicator, proxyString)

        def getMetricsViewNames(self, context=None):
            """
            Get the names of enabled and disabled metrics.
            
            Parameters
            ----------
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Returns a tuple of (str[], str[])
                A tuple containing:
                - str[]
                    The name of the enabled views.
                - str[]
                    The names of the disabled views.
            """
            return _M_IceMX.MetricsAdmin._op_getMetricsViewNames.invoke(self, ((), context))

        def getMetricsViewNamesAsync(self, context=None):
            """
            Get the names of enabled and disabled metrics.
            
            Parameters
            ----------
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceMX.MetricsAdmin._op_getMetricsViewNames.invokeAsync(self, ((), context))

        def enableMetricsView(self, name, context=None):
            """
            Enables a metrics view.
            
            Parameters
            ----------
            name : str
                The metrics view name.
            context : Ice.Context
                The request context for the invocation.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            return _M_IceMX.MetricsAdmin._op_enableMetricsView.invoke(self, ((name, ), context))

        def enableMetricsViewAsync(self, name, context=None):
            """
            Enables a metrics view.
            
            Parameters
            ----------
            name : str
                The metrics view name.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceMX.MetricsAdmin._op_enableMetricsView.invokeAsync(self, ((name, ), context))

        def disableMetricsView(self, name, context=None):
            """
            Disable a metrics view.
            
            Parameters
            ----------
            name : str
                The metrics view name.
            context : Ice.Context
                The request context for the invocation.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            return _M_IceMX.MetricsAdmin._op_disableMetricsView.invoke(self, ((name, ), context))

        def disableMetricsViewAsync(self, name, context=None):
            """
            Disable a metrics view.
            
            Parameters
            ----------
            name : str
                The metrics view name.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceMX.MetricsAdmin._op_disableMetricsView.invokeAsync(self, ((name, ), context))

        def getMetricsView(self, view, context=None):
            """
            Get the metrics objects for the given metrics view. This returns a dictionary of metric maps for each
            metrics class configured with the view. The timestamp allows the client to compute averages which are not
            dependent of the invocation latency for this operation.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Returns a tuple of (dict where keys are str and values are IceMX.Metrics[], int)
                A tuple containing:
                - dict where keys are str and values are IceMX.Metrics[]
                    The metrics view data.
                - int
                    The local time of the process when the metrics object were retrieved.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            return _M_IceMX.MetricsAdmin._op_getMetricsView.invoke(self, ((view, ), context))

        def getMetricsViewAsync(self, view, context=None):
            """
            Get the metrics objects for the given metrics view. This returns a dictionary of metric maps for each
            metrics class configured with the view. The timestamp allows the client to compute averages which are not
            dependent of the invocation latency for this operation.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceMX.MetricsAdmin._op_getMetricsView.invokeAsync(self, ((view, ), context))

        def getMapMetricsFailures(self, view, map, context=None):
            """
            Get the metrics failures associated with the given view and map.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            map : str
                The name of the metrics map.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            IceMX.MetricsFailures[]
                The metrics failures associated with the map.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            return _M_IceMX.MetricsAdmin._op_getMapMetricsFailures.invoke(self, ((view, map), context))

        def getMapMetricsFailuresAsync(self, view, map, context=None):
            """
            Get the metrics failures associated with the given view and map.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            map : str
                The name of the metrics map.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceMX.MetricsAdmin._op_getMapMetricsFailures.invokeAsync(self, ((view, map), context))

        def getMetricsFailures(self, view, map, id, context=None):
            """
            Get the metrics failure associated for the given metrics.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            map : str
                The name of the metrics map.
            id : str
                The ID of the metrics.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            IceMX.MetricsFailures
                The metrics failures associated with the metrics.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            return _M_IceMX.MetricsAdmin._op_getMetricsFailures.invoke(self, ((view, map, id), context))

        def getMetricsFailuresAsync(self, view, map, id, context=None):
            """
            Get the metrics failure associated for the given metrics.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            map : str
                The name of the metrics map.
            id : str
                The ID of the metrics.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceMX.MetricsAdmin._op_getMetricsFailures.invokeAsync(self, ((view, map, id), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_IceMX.MetricsAdminPrx.ice_checkedCast(proxy, '::IceMX::MetricsAdmin', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_IceMX.MetricsAdminPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::IceMX::MetricsAdmin'
    _M_IceMX._t_MetricsAdminPrx = IcePy.defineProxy('::IceMX::MetricsAdmin', MetricsAdminPrx)

    _M_IceMX.MetricsAdminPrx = MetricsAdminPrx
    del MetricsAdminPrx

    _M_IceMX.MetricsAdmin = None
    class MetricsAdmin(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::IceMX::MetricsAdmin')

        def ice_id(self, current=None):
            return '::IceMX::MetricsAdmin'

        @staticmethod
        def ice_staticId():
            return '::IceMX::MetricsAdmin'

        def getMetricsViewNames(self, current=None):
            """
            Get the names of enabled and disabled metrics.
            
            Parameters
            ----------
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'getMetricsViewNames' not implemented")

        def enableMetricsView(self, name, current=None):
            """
            Enables a metrics view.
            
            Parameters
            ----------
            name : str
                The metrics view name.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            raise NotImplementedError("servant method 'enableMetricsView' not implemented")

        def disableMetricsView(self, name, current=None):
            """
            Disable a metrics view.
            
            Parameters
            ----------
            name : str
                The metrics view name.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            raise NotImplementedError("servant method 'disableMetricsView' not implemented")

        def getMetricsView(self, view, current=None):
            """
            Get the metrics objects for the given metrics view. This returns a dictionary of metric maps for each
            metrics class configured with the view. The timestamp allows the client to compute averages which are not
            dependent of the invocation latency for this operation.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            raise NotImplementedError("servant method 'getMetricsView' not implemented")

        def getMapMetricsFailures(self, view, map, current=None):
            """
            Get the metrics failures associated with the given view and map.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            map : str
                The name of the metrics map.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            raise NotImplementedError("servant method 'getMapMetricsFailures' not implemented")

        def getMetricsFailures(self, view, map, id, current=None):
            """
            Get the metrics failure associated for the given metrics.
            
            Parameters
            ----------
            view : str
                The name of the metrics view.
            map : str
                The name of the metrics map.
            id : str
                The ID of the metrics.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            
            Raises
            ------
            UnknownMetricsView
                Raised if the metrics view cannot be found.
            """
            raise NotImplementedError("servant method 'getMetricsFailures' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_MetricsAdminDisp)

        __repr__ = __str__

    MetricsAdmin._op_getMetricsViewNames = IcePy.Operation('getMetricsViewNames', Ice.OperationMode.Normal, False, None, (), (), (((), _M_Ice._t_StringSeq, False, 0),), ((), _M_Ice._t_StringSeq, False, 0), ())
    MetricsAdmin._op_enableMetricsView = IcePy.Operation('enableMetricsView', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), None, (_M_IceMX._t_UnknownMetricsView,))
    MetricsAdmin._op_disableMetricsView = IcePy.Operation('disableMetricsView', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), None, (_M_IceMX._t_UnknownMetricsView,))
    MetricsAdmin._op_getMetricsView = IcePy.Operation('getMetricsView', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), IcePy._t_string, False, 0),), (((), IcePy._t_long, False, 0),), ((), _M_IceMX._t_MetricsView, False, 0), (_M_IceMX._t_UnknownMetricsView,))
    MetricsAdmin._op_getMapMetricsFailures = IcePy.Operation('getMapMetricsFailures', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)), (), ((), _M_IceMX._t_MetricsFailuresSeq, False, 0), (_M_IceMX._t_UnknownMetricsView,))
    MetricsAdmin._op_getMetricsFailures = IcePy.Operation('getMetricsFailures', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)), (), ((), _M_IceMX._t_MetricsFailures, False, 0), (_M_IceMX._t_UnknownMetricsView,))

    _M_IceMX.MetricsAdmin = MetricsAdmin
    del MetricsAdmin

if 'ThreadMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_ThreadMetrics = IcePy.declareValue('::IceMX::ThreadMetrics')

if 'ThreadMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.ThreadMetrics = None
    class ThreadMetrics(_M_IceMX.Metrics):
        """
        Provides information on the number of threads currently in use and their activity.
        
        Attributes
        ----------
        inUseForIO : int
            The number of threads which are currently performing socket read or writes.
        inUseForUser : int
            The number of threads which are currently calling user code (servant dispatch, AMI callbacks, etc).
        inUseForOther : int
            The number of threads which are currently performing other activities. These are all other that are not
            counted with `inUseForUser` or `inUseForIO`, such as DNS lookups, garbage collection).
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, inUseForIO=0, inUseForUser=0, inUseForOther=0):
            _M_IceMX.Metrics.__init__(self, id, total, current, totalLifetime, failures)
            self.inUseForIO = inUseForIO
            self.inUseForUser = inUseForUser
            self.inUseForOther = inUseForOther

        def ice_id(self):
            return '::IceMX::ThreadMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::ThreadMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_ThreadMetrics)

        __repr__ = __str__

    _M_IceMX._t_ThreadMetrics = IcePy.defineValue('::IceMX::ThreadMetrics', ThreadMetrics, -1, (), False, _M_IceMX._t_Metrics, (
        ('inUseForIO', (), IcePy._t_int, False, 0),
        ('inUseForUser', (), IcePy._t_int, False, 0),
        ('inUseForOther', (), IcePy._t_int, False, 0)
    ))
    ThreadMetrics._ice_type = _M_IceMX._t_ThreadMetrics

    _M_IceMX.ThreadMetrics = ThreadMetrics
    del ThreadMetrics

if 'DispatchMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_DispatchMetrics = IcePy.declareValue('::IceMX::DispatchMetrics')

if 'DispatchMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.DispatchMetrics = None
    class DispatchMetrics(_M_IceMX.Metrics):
        """
        Provides information on servant dispatch.
        
        Attributes
        ----------
        userException : int
            The number of dispatch that failed with a user exception.
        size : int
            The size of the dispatch. This corresponds to the size of the marshaled input parameters.
        replySize : int
            The size of the dispatch reply. This corresponds to the size of the marshaled output and return parameters.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, userException=0, size=0, replySize=0):
            _M_IceMX.Metrics.__init__(self, id, total, current, totalLifetime, failures)
            self.userException = userException
            self.size = size
            self.replySize = replySize

        def ice_id(self):
            return '::IceMX::DispatchMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::DispatchMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_DispatchMetrics)

        __repr__ = __str__

    _M_IceMX._t_DispatchMetrics = IcePy.defineValue('::IceMX::DispatchMetrics', DispatchMetrics, -1, (), False, _M_IceMX._t_Metrics, (
        ('userException', (), IcePy._t_int, False, 0),
        ('size', (), IcePy._t_long, False, 0),
        ('replySize', (), IcePy._t_long, False, 0)
    ))
    DispatchMetrics._ice_type = _M_IceMX._t_DispatchMetrics

    _M_IceMX.DispatchMetrics = DispatchMetrics
    del DispatchMetrics

if 'ChildInvocationMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_ChildInvocationMetrics = IcePy.declareValue('::IceMX::ChildInvocationMetrics')

if 'ChildInvocationMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.ChildInvocationMetrics = None
    class ChildInvocationMetrics(_M_IceMX.Metrics):
        """
        Provides information on child invocations. A child invocation is either remote (sent over an Ice connection) or
        collocated. An invocation can have multiple child invocation if it is retried. Child invocation metrics are
        embedded within `InvocationMetrics`.
        
        Attributes
        ----------
        size : int
            The size of the invocation. This corresponds to the size of the marshaled input parameters.
        replySize : int
            The size of the invocation reply. This corresponds to the size of the marshaled output and return
            parameters.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, size=0, replySize=0):
            _M_IceMX.Metrics.__init__(self, id, total, current, totalLifetime, failures)
            self.size = size
            self.replySize = replySize

        def ice_id(self):
            return '::IceMX::ChildInvocationMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::ChildInvocationMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_ChildInvocationMetrics)

        __repr__ = __str__

    _M_IceMX._t_ChildInvocationMetrics = IcePy.defineValue('::IceMX::ChildInvocationMetrics', ChildInvocationMetrics, -1, (), False, _M_IceMX._t_Metrics, (
        ('size', (), IcePy._t_long, False, 0),
        ('replySize', (), IcePy._t_long, False, 0)
    ))
    ChildInvocationMetrics._ice_type = _M_IceMX._t_ChildInvocationMetrics

    _M_IceMX.ChildInvocationMetrics = ChildInvocationMetrics
    del ChildInvocationMetrics

if 'CollocatedMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_CollocatedMetrics = IcePy.declareValue('::IceMX::CollocatedMetrics')

if 'CollocatedMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.CollocatedMetrics = None
    class CollocatedMetrics(_M_IceMX.ChildInvocationMetrics):
        """
        Provides information on invocations that are collocated. Collocated metrics are embedded within
        `InvocationMetrics`.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, size=0, replySize=0):
            _M_IceMX.ChildInvocationMetrics.__init__(self, id, total, current, totalLifetime, failures, size, replySize)

        def ice_id(self):
            return '::IceMX::CollocatedMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::CollocatedMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_CollocatedMetrics)

        __repr__ = __str__

    _M_IceMX._t_CollocatedMetrics = IcePy.defineValue('::IceMX::CollocatedMetrics', CollocatedMetrics, -1, (), False, _M_IceMX._t_ChildInvocationMetrics, ())
    CollocatedMetrics._ice_type = _M_IceMX._t_CollocatedMetrics

    _M_IceMX.CollocatedMetrics = CollocatedMetrics
    del CollocatedMetrics

if 'RemoteMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_RemoteMetrics = IcePy.declareValue('::IceMX::RemoteMetrics')

if 'RemoteMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.RemoteMetrics = None
    class RemoteMetrics(_M_IceMX.ChildInvocationMetrics):
        """
        Provides information on invocations that are specifically sent over Ice connections. Remote metrics are embedded
        within `InvocationMetrics`.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, size=0, replySize=0):
            _M_IceMX.ChildInvocationMetrics.__init__(self, id, total, current, totalLifetime, failures, size, replySize)

        def ice_id(self):
            return '::IceMX::RemoteMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::RemoteMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_RemoteMetrics)

        __repr__ = __str__

    _M_IceMX._t_RemoteMetrics = IcePy.defineValue('::IceMX::RemoteMetrics', RemoteMetrics, -1, (), False, _M_IceMX._t_ChildInvocationMetrics, ())
    RemoteMetrics._ice_type = _M_IceMX._t_RemoteMetrics

    _M_IceMX.RemoteMetrics = RemoteMetrics
    del RemoteMetrics

if 'InvocationMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_InvocationMetrics = IcePy.declareValue('::IceMX::InvocationMetrics')

if 'InvocationMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.InvocationMetrics = None
    class InvocationMetrics(_M_IceMX.Metrics):
        """
        Provide measurements for proxy invocations. Proxy invocations can either be sent over the wire or be collocated.
        
        Attributes
        ----------
        retry : int
            The number of retries for the invocation(s).
        userException : int
            The number of invocations that failed with a user exception.
        remotes : IceMX.Metrics[]
            The remote invocation metrics map.
        collocated : IceMX.Metrics[]
            The collocated invocation metrics map.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, retry=0, userException=0, remotes=None, collocated=None):
            _M_IceMX.Metrics.__init__(self, id, total, current, totalLifetime, failures)
            self.retry = retry
            self.userException = userException
            self.remotes = remotes
            self.collocated = collocated

        def ice_id(self):
            return '::IceMX::InvocationMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::InvocationMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_InvocationMetrics)

        __repr__ = __str__

    _M_IceMX._t_InvocationMetrics = IcePy.defineValue('::IceMX::InvocationMetrics', InvocationMetrics, -1, (), False, _M_IceMX._t_Metrics, (
        ('retry', (), IcePy._t_int, False, 0),
        ('userException', (), IcePy._t_int, False, 0),
        ('remotes', (), _M_IceMX._t_MetricsMap, False, 0),
        ('collocated', (), _M_IceMX._t_MetricsMap, False, 0)
    ))
    InvocationMetrics._ice_type = _M_IceMX._t_InvocationMetrics

    _M_IceMX.InvocationMetrics = InvocationMetrics
    del InvocationMetrics

if 'ConnectionMetrics' not in _M_IceMX.__dict__:
    _M_IceMX._t_ConnectionMetrics = IcePy.declareValue('::IceMX::ConnectionMetrics')

if 'ConnectionMetrics' not in _M_IceMX.__dict__:
    _M_IceMX.ConnectionMetrics = None
    class ConnectionMetrics(_M_IceMX.Metrics):
        """
        Provides information on the data sent and received over Ice connections.
        
        Attributes
        ----------
        receivedBytes : int
            The number of bytes received by the connection.
        sentBytes : int
            The number of bytes sent by the connection.
        """
        def __init__(self, id='', total=0, current=0, totalLifetime=0, failures=0, receivedBytes=0, sentBytes=0):
            _M_IceMX.Metrics.__init__(self, id, total, current, totalLifetime, failures)
            self.receivedBytes = receivedBytes
            self.sentBytes = sentBytes

        def ice_id(self):
            return '::IceMX::ConnectionMetrics'

        @staticmethod
        def ice_staticId():
            return '::IceMX::ConnectionMetrics'

        def __str__(self):
            return IcePy.stringify(self, _M_IceMX._t_ConnectionMetrics)

        __repr__ = __str__

    _M_IceMX._t_ConnectionMetrics = IcePy.defineValue('::IceMX::ConnectionMetrics', ConnectionMetrics, -1, (), False, _M_IceMX._t_Metrics, (
        ('receivedBytes', (), IcePy._t_long, False, 0),
        ('sentBytes', (), IcePy._t_long, False, 0)
    ))
    ConnectionMetrics._ice_type = _M_IceMX._t_ConnectionMetrics

    _M_IceMX.ConnectionMetrics = ConnectionMetrics
    del ConnectionMetrics

# End of module IceMX
