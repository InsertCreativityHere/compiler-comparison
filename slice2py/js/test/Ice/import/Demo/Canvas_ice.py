# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Canvas.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy
import Square_ice
import Circle_ice
import Glacier2.Session_ice

# Included module Demo
_M_Demo = Ice.openModule('Demo')

# Included module Demo.gx
_M_Demo.gx = Ice.openModule('Demo.gx')

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Included module Glacier2
_M_Glacier2 = Ice.openModule('Glacier2')

# Start of module Demo
__name__ = 'Demo'

# Start of module Demo.gx
__name__ = 'Demo.gx'

_M_Demo.gx._t_Canvas = IcePy.defineValue('::Demo::gx::Canvas', Ice.Value, -1, (), False, True, None, ())

if 'CanvasPrx' not in _M_Demo.gx.__dict__:
    _M_Demo.gx.CanvasPrx = Ice.createTempClass()
    class CanvasPrx(Ice.ObjectPrx):

        def paintSquare(self, square, context=None):
            return _M_Demo.gx.Canvas._op_paintSquare.invoke(self, ((square, ), context))

        def paintSquareAsync(self, square, context=None):
            return _M_Demo.gx.Canvas._op_paintSquare.invokeAsync(self, ((square, ), context))

        def begin_paintSquare(self, square, _response=None, _ex=None, _sent=None, context=None):
            return _M_Demo.gx.Canvas._op_paintSquare.begin(self, ((square, ), _response, _ex, _sent, context))

        def end_paintSquare(self, _r):
            return _M_Demo.gx.Canvas._op_paintSquare.end(self, _r)

        def paintCircle(self, circle, context=None):
            return _M_Demo.gx.Canvas._op_paintCircle.invoke(self, ((circle, ), context))

        def paintCircleAsync(self, circle, context=None):
            return _M_Demo.gx.Canvas._op_paintCircle.invokeAsync(self, ((circle, ), context))

        def begin_paintCircle(self, circle, _response=None, _ex=None, _sent=None, context=None):
            return _M_Demo.gx.Canvas._op_paintCircle.begin(self, ((circle, ), _response, _ex, _sent, context))

        def end_paintCircle(self, _r):
            return _M_Demo.gx.Canvas._op_paintCircle.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Demo.gx.CanvasPrx.ice_checkedCast(proxy, '::Demo::gx::Canvas', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Demo.gx.CanvasPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Demo::gx::Canvas'
    _M_Demo.gx._t_CanvasPrx = IcePy.defineProxy('::Demo::gx::Canvas', CanvasPrx)

    _M_Demo.gx.CanvasPrx = CanvasPrx
    del CanvasPrx

    _M_Demo.gx.Canvas = Ice.createTempClass()
    class Canvas(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Demo::gx::Canvas', '::Ice::Object')

        def ice_id(self, current=None):
            return '::Demo::gx::Canvas'

        @staticmethod
        def ice_staticId():
            return '::Demo::gx::Canvas'

        def paintSquare(self, square, current=None):
            raise NotImplementedError("servant method 'paintSquare' not implemented")

        def paintCircle(self, circle, current=None):
            raise NotImplementedError("servant method 'paintCircle' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Demo.gx._t_CanvasDisp)

        __repr__ = __str__

    _M_Demo.gx._t_CanvasDisp = IcePy.defineClass('::Demo::gx::Canvas', Canvas, (), None, ())
    Canvas._ice_type = _M_Demo.gx._t_CanvasDisp

    Canvas._op_paintSquare = IcePy.Operation('paintSquare', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Demo.gx._t_Square, False, 0),), (), None, ())
    Canvas._op_paintCircle = IcePy.Operation('paintCircle', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Demo.gx._t_Circle, False, 0),), (), None, ())

    _M_Demo.gx.Canvas = Canvas
    del Canvas

_M_Demo.gx._t_Session = IcePy.defineValue('::Demo::gx::Session', Ice.Value, -1, (), False, True, None, ())

if 'SessionPrx' not in _M_Demo.gx.__dict__:
    _M_Demo.gx.SessionPrx = Ice.createTempClass()
    class SessionPrx(_M_Glacier2.SessionPrx):

        def destroySession(self, context=None):
            return _M_Demo.gx.Session._op_destroySession.invoke(self, ((), context))

        def destroySessionAsync(self, context=None):
            return _M_Demo.gx.Session._op_destroySession.invokeAsync(self, ((), context))

        def begin_destroySession(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Demo.gx.Session._op_destroySession.begin(self, ((), _response, _ex, _sent, context))

        def end_destroySession(self, _r):
            return _M_Demo.gx.Session._op_destroySession.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Demo.gx.SessionPrx.ice_checkedCast(proxy, '::Demo::gx::Session', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Demo.gx.SessionPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Demo::gx::Session'
    _M_Demo.gx._t_SessionPrx = IcePy.defineProxy('::Demo::gx::Session', SessionPrx)

    _M_Demo.gx.SessionPrx = SessionPrx
    del SessionPrx

    _M_Demo.gx.Session = Ice.createTempClass()
    class Session(_M_Glacier2.Session):

        def ice_ids(self, current=None):
            return ('::Demo::gx::Session', '::Glacier2::Session', '::Ice::Object')

        def ice_id(self, current=None):
            return '::Demo::gx::Session'

        @staticmethod
        def ice_staticId():
            return '::Demo::gx::Session'

        def destroySession(self, current=None):
            raise NotImplementedError("servant method 'destroySession' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Demo.gx._t_SessionDisp)

        __repr__ = __str__

    _M_Demo.gx._t_SessionDisp = IcePy.defineClass('::Demo::gx::Session', Session, (), None, (_M_Glacier2._t_SessionDisp,))
    Session._ice_type = _M_Demo.gx._t_SessionDisp

    Session._op_destroySession = IcePy.Operation('destroySession', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Demo.gx.Session = Session
    del Session

# End of module Demo.gx

__name__ = 'Demo'

# End of module Demo
