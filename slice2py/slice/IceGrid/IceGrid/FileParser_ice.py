# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'FileParser.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins
import IceGrid.Admin_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Included module Glacier2
_M_Glacier2 = Ice.openModule('Glacier2')

# Included module IceGrid
_M_IceGrid = Ice.openModule('IceGrid')

# Start of module IceGrid
__name__ = 'IceGrid'

if 'ParseException' not in _M_IceGrid.__dict__:
    _M_IceGrid.ParseException = None
    class ParseException(Ice.UserException):
        """
        This exception is raised if an error occurs during parsing.
        
        Attributes
        ----------
        reason : str
            The reason for the failure.
        """
        def __init__(self, reason=''):
            self.reason = reason

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::IceGrid::ParseException'

    _M_IceGrid._t_ParseException = IcePy.defineException('::IceGrid::ParseException', ParseException, (), None, (('reason', (), IcePy._t_string, False, 0),))
    ParseException._ice_type = _M_IceGrid._t_ParseException

    _M_IceGrid.ParseException = ParseException
    del ParseException

if 'FileParser' not in _M_IceGrid.__dict__:
    _M_IceGrid._t_FileParserPrx = IcePy.declareProxy('::IceGrid::FileParser')

if 'FileParserPrx' not in _M_IceGrid.__dict__:
    _M_IceGrid.FileParserPrx = None
    class FileParserPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new FileParserPrx proxy
            
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

        def parse(self, xmlFile, adminProxy, context=None):
            """
            Parse a file.
            
            Parameters
            ----------
            xmlFile : str
                Full pathname to the file.
            adminProxy : (IceGrid.AdminPrx or None)
                An Admin proxy, used only to retrieve default templates when needed. May be null.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            IceGrid.ApplicationDescriptor
                The application descriptor.
            
            Raises
            ------
            ParseException
                Raised if an error occurred during parsing.
            """
            return _M_IceGrid.FileParser._op_parse.invoke(self, ((xmlFile, adminProxy), context))

        def parseAsync(self, xmlFile, adminProxy, context=None):
            """
            Parse a file.
            
            Parameters
            ----------
            xmlFile : str
                Full pathname to the file.
            adminProxy : (IceGrid.AdminPrx or None)
                An Admin proxy, used only to retrieve default templates when needed. May be null.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceGrid.FileParser._op_parse.invokeAsync(self, ((xmlFile, adminProxy), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_IceGrid.FileParserPrx.ice_checkedCast(proxy, '::IceGrid::FileParser', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_IceGrid.FileParserPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::IceGrid::FileParser'
    _M_IceGrid._t_FileParserPrx = IcePy.defineProxy('::IceGrid::FileParser', FileParserPrx)

    _M_IceGrid.FileParserPrx = FileParserPrx
    del FileParserPrx

    _M_IceGrid.FileParser = None
    class FileParser(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::IceGrid::FileParser')

        def ice_id(self, current=None):
            return '::IceGrid::FileParser'

        @staticmethod
        def ice_staticId():
            return '::IceGrid::FileParser'

        def parse(self, xmlFile, adminProxy, current=None):
            """
            Parse a file.
            
            Parameters
            ----------
            xmlFile : str
                Full pathname to the file.
            adminProxy : (IceGrid.AdminPrx or None)
                An Admin proxy, used only to retrieve default templates when needed. May be null.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            
            Raises
            ------
            ParseException
                Raised if an error occurred during parsing.
            """
            raise NotImplementedError("servant method 'parse' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_IceGrid._t_FileParserDisp)

        __repr__ = __str__

    FileParser._op_parse = IcePy.Operation('parse', Ice.OperationMode.Idempotent, False, None, (), (((), IcePy._t_string, False, 0), ((), _M_IceGrid._t_AdminPrx, False, 0)), (), ((), _M_IceGrid._t_ApplicationDescriptor, False, 0), (_M_IceGrid._t_ParseException,))

    _M_IceGrid.FileParser = FileParser
    del FileParser

# End of module IceGrid
