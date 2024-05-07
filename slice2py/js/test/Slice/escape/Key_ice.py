# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Key.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice, IcePy

# Start of module _await
_M__await = Ice.openModule('_await')
__name__ = '_await'

if 'var' not in _M__await.__dict__:
    _M__await.var = Ice.createTempClass()
    class var(Ice.EnumBase):

        def __init__(self, _n, _v):
            Ice.EnumBase.__init__(self, _n, _v)

        def valueOf(self, _n):
            if _n in self._enumerators:
                return self._enumerators[_n]
            return None
        valueOf = classmethod(valueOf)

    var.base = var("base", 0)
    var._enumerators = { 0:var.base }

    _M__await._t_var = IcePy.defineEnum('::await::var', var, (), var._enumerators)

    _M__await.var = var
    del var

if '_break' not in _M__await.__dict__:
    _M__await._break = Ice.createTempClass()
    class _break(object):
        def __init__(self, _while=0):
            self._while = _while

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self._while)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M__await._break):
                return NotImplemented
            else:
                if self._while is None or other._while is None:
                    if self._while != other._while:
                        return (-1 if self._while is None else 1)
                else:
                    if self._while < other._while:
                        return -1
                    elif self._while > other._while:
                        return 1
                return 0

        def __lt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r < 0

        def __le__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r <= 0

        def __gt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r > 0

        def __ge__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r >= 0

        def __eq__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r == 0

        def __ne__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r != 0

        def __str__(self):
            return IcePy.stringify(self, _M__await._t__break)

        __repr__ = __str__

    _M__await._t__break = IcePy.defineStruct('::await::break', _break, (), (('_while', (), IcePy._t_int),))

    _M__await._break = _break
    del _break

_M__await._t__case = IcePy.defineValue('::await::case', Ice.Value, -1, (), True, None, ())

if 'casePrx' not in _M__await.__dict__:
    _M__await.casePrx = Ice.createTempClass()
    class casePrx(Ice.ObjectPrx):

        def catch(self, checked, context=None):
            return _M__await._case._op_catch.invoke(self, ((checked, ), context))

        def catchAsync(self, checked, context=None):
            return _M__await._case._op_catch.invokeAsync(self, ((checked, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__await.casePrx.ice_checkedCast(proxy, '::await::case', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__await.casePrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::await::case'
    _M__await._t_casePrx = IcePy.defineProxy('::await::case', casePrx)

    _M__await.casePrx = casePrx
    del casePrx

    _M__await._case = Ice.createTempClass()
    class _case(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::await::case')

        def ice_id(self, current=None):
            return '::await::case'

        @staticmethod
        def ice_staticId():
            return '::await::case'

        def catch(self, checked, current=None):
            raise NotImplementedError("servant method 'catch' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_caseDisp)

        __repr__ = __str__

    _M__await._t_caseDisp = IcePy.defineClass('::await::case', _case, (), None, ())
    _case._ice_type = _M__await._t_caseDisp

    _case._op_catch = IcePy.Operation('catch', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0),), (((), IcePy._t_int, False, 0),), None, ())

    _M__await._case = _case
    del _case

_M__await._t_typeof = IcePy.defineValue('::await::typeof', Ice.Value, -1, (), True, None, ())

if 'typeofPrx' not in _M__await.__dict__:
    _M__await.typeofPrx = Ice.createTempClass()
    class typeofPrx(Ice.ObjectPrx):

        def default(self, context=None):
            return _M__await.typeof._op_default.invoke(self, ((), context))

        def defaultAsync(self, context=None):
            return _M__await.typeof._op_default.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__await.typeofPrx.ice_checkedCast(proxy, '::await::typeof', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__await.typeofPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::await::typeof'
    _M__await._t_typeofPrx = IcePy.defineProxy('::await::typeof', typeofPrx)

    _M__await.typeofPrx = typeofPrx
    del typeofPrx

    _M__await.typeof = Ice.createTempClass()
    class typeof(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::await::typeof')

        def ice_id(self, current=None):
            return '::await::typeof'

        @staticmethod
        def ice_staticId():
            return '::await::typeof'

        def default(self, current=None):
            raise NotImplementedError("servant method 'default' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_typeofDisp)

        __repr__ = __str__

    _M__await._t_typeofDisp = IcePy.defineClass('::await::typeof', typeof, (), None, ())
    typeof._ice_type = _M__await._t_typeofDisp

    typeof._op_default = IcePy.Operation('default', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M__await.typeof = typeof
    del typeof

if 'delete' not in _M__await.__dict__:
    _M__await.delete = Ice.createTempClass()
    class delete(Ice.Value):
        def __init__(self, _if=0, _else=None, export=0):
            self._if = _if
            self._else = _else
            self.export = export

        def ice_id(self):
            return '::await::delete'

        @staticmethod
        def ice_staticId():
            return '::await::delete'

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_delete)

        __repr__ = __str__

    _M__await._t_delete = IcePy.defineValue('::await::delete', delete, -1, (), False, None, (
        ('_if', (), IcePy._t_int, False, 0),
        ('_else', (), _M__await._t_casePrx, False, 0),
        ('export', (), IcePy._t_int, False, 0)
    ))
    delete._ice_type = _M__await._t_delete

    _M__await.delete = delete
    del delete

_M__await._t_explicit = IcePy.defineValue('::await::explicit', Ice.Value, -1, (), True, None, ())

if 'explicitPrx' not in _M__await.__dict__:
    _M__await.explicitPrx = Ice.createTempClass()
    class explicitPrx(_M__await.typeofPrx, _M__await.casePrx):

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__await.explicitPrx.ice_checkedCast(proxy, '::await::explicit', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__await.explicitPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::await::explicit'
    _M__await._t_explicitPrx = IcePy.defineProxy('::await::explicit', explicitPrx)

    _M__await.explicitPrx = explicitPrx
    del explicitPrx

    _M__await.explicit = Ice.createTempClass()
    class explicit(_M__await.typeof, _M__await._case):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::await::case', '::await::explicit', '::await::typeof')

        def ice_id(self, current=None):
            return '::await::explicit'

        @staticmethod
        def ice_staticId():
            return '::await::explicit'

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_explicitDisp)

        __repr__ = __str__

    _M__await._t_explicitDisp = IcePy.defineClass('::await::explicit', explicit, (), None, (_M__await._t_typeofDisp, _M__await._t_caseDisp))
    explicit._ice_type = _M__await._t_explicitDisp

    _M__await.explicit = explicit
    del explicit

if '_t__while' not in _M__await.__dict__:
    _M__await._t__while = IcePy.defineDictionary('::await::while', (), IcePy._t_string, _M__await._t__break)

if 'package' not in _M__await.__dict__:
    _M__await.package = Ice.createTempClass()
    class package(Ice.Value):
        def __init__(self, _for=Ice.Unset, goto=Ice.Unset, _if=Ice.Unset, internal=Ice.Unset, debugger=Ice.Unset, null=Ice.Unset):
            self._for = _for
            self.goto = goto
            self._if = _if
            self.internal = internal
            self.debugger = debugger
            self.null = null

        def ice_id(self):
            return '::await::package'

        @staticmethod
        def ice_staticId():
            return '::await::package'

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_package)

        __repr__ = __str__

    _M__await._t_package = IcePy.defineValue('::await::package', package, -1, (), False, None, (
        ('_for', (), _M__await._t__break, True, 1),
        ('goto', (), _M__await._t_var, True, 2),
        ('_if', (), _M__await._t_explicitPrx, True, 3),
        ('internal', (), _M__await._t__while, True, 5),
        ('debugger', (), IcePy._t_string, True, 7),
        ('null', (), _M__await._t_explicitPrx, True, 8)
    ))
    package._ice_type = _M__await._t_package

    _M__await.package = package
    del package

_M__await._t_optionalParams = IcePy.defineValue('::await::optionalParams', Ice.Value, -1, (), True, None, ())

if 'optionalParamsPrx' not in _M__await.__dict__:
    _M__await.optionalParamsPrx = Ice.createTempClass()
    class optionalParamsPrx(Ice.ObjectPrx):

        def _for(self, goto=Ice.Unset, _if=Ice.Unset, internal=Ice.Unset, namespace=Ice.Unset, null=Ice.Unset, context=None):
            return _M__await.optionalParams._op_for.invoke(self, ((goto, _if, internal, namespace, null), context))

        def forAsync(self, goto, _if, internal, namespace, null, context=None):
            return _M__await.optionalParams._op_for.invokeAsync(self, ((goto, _if, internal, namespace, null), context))

        def _continue(self, goto=Ice.Unset, _if=Ice.Unset, internal=Ice.Unset, namespace=Ice.Unset, null=Ice.Unset, context=None):
            return _M__await.optionalParams._op_continue.invoke(self, ((goto, _if, internal, namespace, null), context))

        def continueAsync(self, goto, _if, internal, namespace, null, context=None):
            return _M__await.optionalParams._op_continue.invokeAsync(self, ((goto, _if, internal, namespace, null), context))

        def _in(self, context=None):
            return _M__await.optionalParams._op_in.invoke(self, ((), context))

        def inAsync(self, context=None):
            return _M__await.optionalParams._op_in.invokeAsync(self, ((), context))

        def foreach(self, context=None):
            return _M__await.optionalParams._op_foreach.invoke(self, ((), context))

        def foreachAsync(self, context=None):
            return _M__await.optionalParams._op_foreach.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__await.optionalParamsPrx.ice_checkedCast(proxy, '::await::optionalParams', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__await.optionalParamsPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::await::optionalParams'
    _M__await._t_optionalParamsPrx = IcePy.defineProxy('::await::optionalParams', optionalParamsPrx)

    _M__await.optionalParamsPrx = optionalParamsPrx
    del optionalParamsPrx

    _M__await.optionalParams = Ice.createTempClass()
    class optionalParams(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::await::optionalParams')

        def ice_id(self, current=None):
            return '::await::optionalParams'

        @staticmethod
        def ice_staticId():
            return '::await::optionalParams'

        def _for(self, goto, _if, internal, namespace, null, current=None):
            raise NotImplementedError("servant method '_for' not implemented")

        def _continue(self, goto, _if, internal, namespace, null, current=None):
            raise NotImplementedError("servant method '_continue' not implemented")

        def _in(self, current=None):
            raise NotImplementedError("servant method '_in' not implemented")

        def foreach(self, current=None):
            raise NotImplementedError("servant method 'foreach' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_optionalParamsDisp)

        __repr__ = __str__

    _M__await._t_optionalParamsDisp = IcePy.defineClass('::await::optionalParams', optionalParams, (), None, ())
    optionalParams._ice_type = _M__await._t_optionalParamsDisp

    optionalParams._op_for = IcePy.Operation('for', Ice.OperationMode.Normal, False, None, (), (((), _M__await._t_var, True, 2), ((), _M__await._t_explicitPrx, True, 3), ((), _M__await._t__while, True, 5), ((), IcePy._t_string, True, 7), ((), _M__await._t_explicitPrx, True, 8)), (), ((), _M__await._t__break, True, 1), ())
    optionalParams._op_continue = IcePy.Operation('continue', Ice.OperationMode.Normal, True, None, (), (((), _M__await._t_var, True, 2), ((), _M__await._t_explicitPrx, True, 3), ((), _M__await._t__while, True, 5), ((), IcePy._t_string, True, 7), ((), _M__await._t_explicitPrx, True, 8)), (), ((), _M__await._t__break, True, 1), ())
    optionalParams._op_in = IcePy.Operation('in', Ice.OperationMode.Normal, False, None, (), (), (((), _M__await._t_var, True, 2), ((), _M__await._t_explicitPrx, True, 3), ((), _M__await._t__while, True, 5), ((), IcePy._t_string, True, 7), ((), _M__await._t_explicitPrx, True, 8)), ((), _M__await._t__break, True, 1), ())
    optionalParams._op_foreach = IcePy.Operation('foreach', Ice.OperationMode.Normal, True, None, (), (), (((), _M__await._t_var, True, 2), ((), _M__await._t_explicitPrx, True, 3), ((), _M__await._t__while, True, 5), ((), IcePy._t_string, True, 7), ((), _M__await._t_explicitPrx, True, 8)), ((), _M__await._t__break, True, 1), ())

    _M__await.optionalParams = optionalParams
    del optionalParams

if 'fixed' not in _M__await.__dict__:
    _M__await.fixed = Ice.createTempClass()
    class fixed(Ice.UserException):
        def __init__(self, _for=0):
            self._for = _for

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::await::fixed'

    _M__await._t_fixed = IcePy.defineException('::await::fixed', fixed, (), None, (('_for', (), IcePy._t_int, False, 0),))
    fixed._ice_type = _M__await._t_fixed

    _M__await.fixed = fixed
    del fixed

if 'foreach' not in _M__await.__dict__:
    _M__await.foreach = Ice.createTempClass()
    class foreach(_M__await.fixed):
        def __init__(self, _for=0, goto=0, _if=0):
            _M__await.fixed.__init__(self, _for)
            self.goto = goto
            self._if = _if

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::await::foreach'

    _M__await._t_foreach = IcePy.defineException('::await::foreach', foreach, (), _M__await._t_fixed, (
        ('goto', (), IcePy._t_int, False, 0),
        ('_if', (), IcePy._t_int, False, 0)
    ))
    foreach._ice_type = _M__await._t_foreach

    _M__await.foreach = foreach
    del foreach

if 'BaseMethods' not in _M__await.__dict__:
    _M__await.BaseMethods = Ice.createTempClass()
    class BaseMethods(Ice.UserException):
        def __init__(self, Data=0, HelpLink=0, InnerException=0, Message=0, Source=0, StackTrace=0, TargetSite=0, HResult=0, Equals=0, GetBaseException=0, GetHashCode=0, GetObjectData=0, GetType=0, ReferenceEquals=0, ToString=0):
            self.Data = Data
            self.HelpLink = HelpLink
            self.InnerException = InnerException
            self.Message = Message
            self.Source = Source
            self.StackTrace = StackTrace
            self.TargetSite = TargetSite
            self.HResult = HResult
            self.Equals = Equals
            self.GetBaseException = GetBaseException
            self.GetHashCode = GetHashCode
            self.GetObjectData = GetObjectData
            self.GetType = GetType
            self.ReferenceEquals = ReferenceEquals
            self.ToString = ToString

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::await::BaseMethods'

    _M__await._t_BaseMethods = IcePy.defineException('::await::BaseMethods', BaseMethods, (), None, (
        ('Data', (), IcePy._t_int, False, 0),
        ('HelpLink', (), IcePy._t_int, False, 0),
        ('InnerException', (), IcePy._t_int, False, 0),
        ('Message', (), IcePy._t_int, False, 0),
        ('Source', (), IcePy._t_int, False, 0),
        ('StackTrace', (), IcePy._t_int, False, 0),
        ('TargetSite', (), IcePy._t_int, False, 0),
        ('HResult', (), IcePy._t_int, False, 0),
        ('Equals', (), IcePy._t_int, False, 0),
        ('GetBaseException', (), IcePy._t_int, False, 0),
        ('GetHashCode', (), IcePy._t_int, False, 0),
        ('GetObjectData', (), IcePy._t_int, False, 0),
        ('GetType', (), IcePy._t_int, False, 0),
        ('ReferenceEquals', (), IcePy._t_int, False, 0),
        ('ToString', (), IcePy._t_int, False, 0)
    ))
    BaseMethods._ice_type = _M__await._t_BaseMethods

    _M__await.BaseMethods = BaseMethods
    del BaseMethods

_M__await._t_implicit = IcePy.defineValue('::await::implicit', Ice.Value, -1, (), True, None, ())

if 'implicitPrx' not in _M__await.__dict__:
    _M__await.implicitPrx = Ice.createTempClass()
    class implicitPrx(Ice.ObjectPrx):

        def _in(self, internal, _is, lock, namespace, new, null, operator, override, params, private, context=None):
            return _M__await.implicit._op_in.invoke(self, ((internal, _is, lock, namespace, new, null, operator, override, params, private), context))

        def inAsync(self, internal, _is, lock, namespace, new, null, operator, override, params, private, context=None):
            return _M__await.implicit._op_in.invokeAsync(self, ((internal, _is, lock, namespace, new, null, operator, override, params, private), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__await.implicitPrx.ice_checkedCast(proxy, '::await::implicit', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__await.implicitPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::await::implicit'
    _M__await._t_implicitPrx = IcePy.defineProxy('::await::implicit', implicitPrx)

    _M__await.implicitPrx = implicitPrx
    del implicitPrx

    _M__await.implicit = Ice.createTempClass()
    class implicit(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::await::implicit')

        def ice_id(self, current=None):
            return '::await::implicit'

        @staticmethod
        def ice_staticId():
            return '::await::implicit'

        def _in(self, internal, _is, lock, namespace, new, null, operator, override, params, private, current=None):
            raise NotImplementedError("servant method '_in' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__await._t_implicitDisp)

        __repr__ = __str__

    _M__await._t_implicitDisp = IcePy.defineClass('::await::implicit', implicit, (), None, ())
    implicit._ice_type = _M__await._t_implicitDisp

    implicit._op_in = IcePy.Operation('in', Ice.OperationMode.Normal, False, None, (), (((), _M__await._t__break, False, 0), ((), _M__await._t_delete, False, 0), ((), _M__await._t_explicitPrx, False, 0), ((), _M__await._t_casePrx, False, 0), ((), _M__await._t_typeofPrx, False, 0), ((), _M__await._t_delete, False, 0), ((), _M__await._t_explicitPrx, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), ((), _M__await._t_var, False, 0), (_M__await._t_fixed, _M__await._t_foreach))

    _M__await.implicit = implicit
    del implicit

_M__await.protected = 0

_M__await.public = 0

# Start of module _await.System
_M__await.System = Ice.openModule('_await.System')
__name__ = '_await.System'

_M__await.System._t_Test = IcePy.defineValue('::await::System::Test', Ice.Value, -1, (), True, None, ())

if 'TestPrx' not in _M__await.System.__dict__:
    _M__await.System.TestPrx = Ice.createTempClass()
    class TestPrx(Ice.ObjectPrx):

        def op(self, context=None):
            return _M__await.System.Test._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M__await.System.Test._op_op.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__await.System.TestPrx.ice_checkedCast(proxy, '::await::System::Test', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__await.System.TestPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::await::System::Test'
    _M__await.System._t_TestPrx = IcePy.defineProxy('::await::System::Test', TestPrx)

    _M__await.System.TestPrx = TestPrx
    del TestPrx

    _M__await.System.Test = Ice.createTempClass()
    class Test(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::await::System::Test')

        def ice_id(self, current=None):
            return '::await::System::Test'

        @staticmethod
        def ice_staticId():
            return '::await::System::Test'

        def op(self, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__await.System._t_TestDisp)

        __repr__ = __str__

    _M__await.System._t_TestDisp = IcePy.defineClass('::await::System::Test', Test, (), None, ())
    Test._ice_type = _M__await.System._t_TestDisp

    Test._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M__await.System.Test = Test
    del Test

# End of module _await.System

__name__ = '_await'

# End of module _await

# Start of module System
_M_System = Ice.openModule('System')
__name__ = 'System'

_M_System._t_Test = IcePy.defineValue('::System::Test', Ice.Value, -1, (), True, None, ())

if 'TestPrx' not in _M_System.__dict__:
    _M_System.TestPrx = Ice.createTempClass()
    class TestPrx(Ice.ObjectPrx):

        def op(self, context=None):
            return _M_System.Test._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M_System.Test._op_op.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_System.TestPrx.ice_checkedCast(proxy, '::System::Test', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_System.TestPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::System::Test'
    _M_System._t_TestPrx = IcePy.defineProxy('::System::Test', TestPrx)

    _M_System.TestPrx = TestPrx
    del TestPrx

    _M_System.Test = Ice.createTempClass()
    class Test(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::System::Test')

        def ice_id(self, current=None):
            return '::System::Test'

        @staticmethod
        def ice_staticId():
            return '::System::Test'

        def op(self, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_System._t_TestDisp)

        __repr__ = __str__

    _M_System._t_TestDisp = IcePy.defineClass('::System::Test', Test, (), None, ())
    Test._ice_type = _M_System._t_TestDisp

    Test._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_System.Test = Test
    del Test

# End of module System
