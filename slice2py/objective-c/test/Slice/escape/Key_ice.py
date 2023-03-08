# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Key.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy

# Start of module _and
_M__and = Ice.openModule('_and')
__name__ = '_and'

if '_continue' not in _M__and.__dict__:
    _M__and._continue = Ice.createTempClass()
    class _continue(Ice.EnumBase):

        def __init__(self, _n, _v):
            Ice.EnumBase.__init__(self, _n, _v)

        def valueOf(self, _n):
            if _n in self._enumerators:
                return self._enumerators[_n]
            return None
        valueOf = classmethod(valueOf)

    _continue.asm = _continue("asm", 0)
    _continue._enumerators = { 0:_continue.asm }

    _M__and._t__continue = IcePy.defineEnum('::and::continue', _continue, (), _continue._enumerators)

    _M__and._continue = _continue
    del _continue

if 'auto' not in _M__and.__dict__:
    _M__and.auto = Ice.createTempClass()
    class auto(object):
        def __init__(self, default=0):
            self.default = default

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self.default)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M__and.auto):
                return NotImplemented
            else:
                if self.default is None or other.default is None:
                    if self.default != other.default:
                        return (-1 if self.default is None else 1)
                else:
                    if self.default < other.default:
                        return -1
                    elif self.default > other.default:
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
            return IcePy.stringify(self, _M__and._t_auto)

        __repr__ = __str__

    _M__and._t_auto = IcePy.defineStruct('::and::auto', auto, (), (('default', (), IcePy._t_int),))

    _M__and.auto = auto
    del auto

if 'delete' not in _M__and.__dict__:
    _M__and.delete = Ice.createTempClass()
    class delete(object):
        def __init__(self, _else=''):
            self._else = _else

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self._else)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M__and.delete):
                return NotImplemented
            else:
                if self._else is None or other._else is None:
                    if self._else != other._else:
                        return (-1 if self._else is None else 1)
                else:
                    if self._else < other._else:
                        return -1
                    elif self._else > other._else:
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
            return IcePy.stringify(self, _M__and._t_delete)

        __repr__ = __str__

    _M__and._t_delete = IcePy.defineStruct('::and::delete', delete, (), (('_else', (), IcePy._t_string),))

    _M__and.delete = delete
    del delete

_M__and._t__break = IcePy.defineValue('::and::break', Ice.Value, -1, (), False, True, None, ())

if 'breakPrx' not in _M__and.__dict__:
    _M__and.breakPrx = Ice.createTempClass()
    class breakPrx(Ice.ObjectPrx):

        def _case(self, catch, context=None):
            return _M__and._break._op_case.invoke(self, ((catch, ), context))

        def caseAsync(self, catch, context=None):
            return _M__and._break._op_case.invokeAsync(self, ((catch, ), context))

        def begin_case(self, catch, _response=None, _ex=None, _sent=None, context=None):
            return _M__and._break._op_case.begin(self, ((catch, ), _response, _ex, _sent, context))

        def end_case(self, _r):
            return _M__and._break._op_case.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.breakPrx.ice_checkedCast(proxy, '::and::break', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.breakPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::break'
    _M__and._t_breakPrx = IcePy.defineProxy('::and::break', breakPrx)

    _M__and.breakPrx = breakPrx
    del breakPrx

    _M__and._break = Ice.createTempClass()
    class _break(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::break')

        def ice_id(self, current=None):
            return '::and::break'

        @staticmethod
        def ice_staticId():
            return '::and::break'

        def _case(self, catch, current=None):
            raise NotImplementedError("servant method '_case' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_breakDisp)

        __repr__ = __str__

    _M__and._t_breakDisp = IcePy.defineClass('::and::break', _break, (), None, ())
    _break._ice_type = _M__and._t_breakDisp

    _break._op_case = IcePy.Operation('case', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (((), IcePy._t_int, False, 0),), None, ())

    _M__and._break = _break
    del _break

_M__and._t_char = IcePy.defineValue('::and::char', Ice.Value, -1, (), False, True, None, ())

if 'charPrx' not in _M__and.__dict__:
    _M__and.charPrx = Ice.createTempClass()
    class charPrx(Ice.ObjectPrx):

        def explicit(self, context=None):
            return _M__and.char._op_explicit.invoke(self, ((), context))

        def explicitAsync(self, context=None):
            return _M__and.char._op_explicit.invokeAsync(self, ((), context))

        def begin_explicit(self, _response=None, _ex=None, _sent=None, context=None):
            return _M__and.char._op_explicit.begin(self, ((), _response, _ex, _sent, context))

        def end_explicit(self, _r):
            return _M__and.char._op_explicit.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.charPrx.ice_checkedCast(proxy, '::and::char', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.charPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::char'
    _M__and._t_charPrx = IcePy.defineProxy('::and::char', charPrx)

    _M__and.charPrx = charPrx
    del charPrx

    _M__and.char = Ice.createTempClass()
    class char(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::char')

        def ice_id(self, current=None):
            return '::and::char'

        @staticmethod
        def ice_staticId():
            return '::and::char'

        def explicit(self, current=None):
            raise NotImplementedError("servant method 'explicit' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_charDisp)

        __repr__ = __str__

    _M__and._t_charDisp = IcePy.defineClass('::and::char', char, (), None, ())
    char._ice_type = _M__and._t_charDisp

    char._op_explicit = IcePy.Operation('explicit', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M__and.char = char
    del char

_M__and._t_switch = IcePy.defineValue('::and::switch', Ice.Value, -1, (), False, True, None, ())

if 'switchPrx' not in _M__and.__dict__:
    _M__and.switchPrx = Ice.createTempClass()
    class switchPrx(Ice.ObjectPrx):

        def foo(self, export, context=None):
            return _M__and.switch._op_foo.invoke(self, ((export, ), context))

        def fooAsync(self, export, context=None):
            return _M__and.switch._op_foo.invokeAsync(self, ((export, ), context))

        def begin_foo(self, export, _response=None, _ex=None, _sent=None, context=None):
            return _M__and.switch._op_foo.begin(self, ((export, ), _response, _ex, _sent, context))

        def end_foo(self, _r):
            return _M__and.switch._op_foo.end(self, _r)

        def foo2(self, export, YES, context=None):
            return _M__and.switch._op_foo2.invoke(self, ((export, YES), context))

        def foo2Async(self, export, YES, context=None):
            return _M__and.switch._op_foo2.invokeAsync(self, ((export, YES), context))

        def begin_foo2(self, export, YES, _response=None, _ex=None, _sent=None, context=None):
            return _M__and.switch._op_foo2.begin(self, ((export, YES), _response, _ex, _sent, context))

        def end_foo2(self, _r):
            return _M__and.switch._op_foo2.end(self, _r)

        def foo3(self, export, context=None):
            return _M__and.switch._op_foo3.invoke(self, ((export, ), context))

        def foo3Async(self, export, context=None):
            return _M__and.switch._op_foo3.invokeAsync(self, ((export, ), context))

        def begin_foo3(self, export, _response=None, _ex=None, _sent=None, context=None):
            return _M__and.switch._op_foo3.begin(self, ((export, ), _response, _ex, _sent, context))

        def end_foo3(self, _r):
            return _M__and.switch._op_foo3.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.switchPrx.ice_checkedCast(proxy, '::and::switch', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.switchPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::switch'
    _M__and._t_switchPrx = IcePy.defineProxy('::and::switch', switchPrx)

    _M__and.switchPrx = switchPrx
    del switchPrx

    _M__and.switch = Ice.createTempClass()
    class switch(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::switch')

        def ice_id(self, current=None):
            return '::and::switch'

        @staticmethod
        def ice_staticId():
            return '::and::switch'

        def foo(self, export, current=None):
            raise NotImplementedError("servant method 'foo' not implemented")

        def foo2(self, export, YES, current=None):
            raise NotImplementedError("servant method 'foo2' not implemented")

        def foo3(self, export, current=None):
            raise NotImplementedError("servant method 'foo3' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_switchDisp)

        __repr__ = __str__

    _M__and._t_switchDisp = IcePy.defineClass('::and::switch', switch, (), None, ())
    switch._ice_type = _M__and._t_switchDisp

    switch._op_foo = IcePy.Operation('foo', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M__and._t_charPrx, False, 0),), (((), IcePy._t_int, False, 0),), None, ())
    switch._op_foo2 = IcePy.Operation('foo2', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M__and._t_charPrx, False, 0), ((), IcePy._t_int, False, 0)), (((), IcePy._t_int, False, 0),), None, ())
    switch._op_foo3 = IcePy.Operation('foo3', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M__and._t_charPrx, False, 0),), (((), IcePy._t_int, False, 0),), None, ())

    _M__and.switch = switch
    del switch

if 'do' not in _M__and.__dict__:
    _M__and.do = Ice.createTempClass()
    class do(Ice.Value):
        def __init__(self, _if=0):
            self._if = _if

        def ice_id(self):
            return '::and::do'

        @staticmethod
        def ice_staticId():
            return '::and::do'

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_do)

        __repr__ = __str__

    _M__and._t_do = IcePy.defineValue('::and::do', do, -1, (), False, False, None, (('_if', (), IcePy._t_int, False, 0),))
    do._ice_type = _M__and._t_do

    _M__and.do = do
    del do

if 'doPrx' not in _M__and.__dict__:
    _M__and.doPrx = Ice.createTempClass()
    class doPrx(_M__and.charPrx, _M__and.breakPrx, _M__and.switchPrx):

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.doPrx.ice_checkedCast(proxy, '::and::do', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.doPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::do'
    _M__and._t_doPrx = IcePy.defineProxy('::and::do', doPrx)

    _M__and.doPrx = doPrx
    del doPrx

    _M__and.doDisp = Ice.createTempClass()
    class doDisp(_M__and.char, _M__and._break, _M__and.switch):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::break', '::and::char', '::and::do', '::and::switch')

        def ice_id(self, current=None):
            return '::and::do'

        @staticmethod
        def ice_staticId():
            return '::and::do'

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_doDisp)

        __repr__ = __str__

    _M__and._t_doDisp = IcePy.defineClass('::and::do', doDisp, (), None, (_M__and._t_charDisp, _M__and._t_breakDisp, _M__and._t_switchDisp))
    doDisp._ice_type = _M__and._t_doDisp

    _M__and.doDisp = doDisp
    del doDisp

if '_t_extern' not in _M__and.__dict__:
    _M__and._t_extern = IcePy.defineSequence('::and::extern', (), _M__and._t_auto)

if '_t__for' not in _M__and.__dict__:
    _M__and._t__for = IcePy.defineDictionary('::and::for', (), IcePy._t_string, _M__and._t_auto)

if '_return' not in _M__and.__dict__:
    _M__and._return = Ice.createTempClass()
    class _return(Ice.UserException):
        def __init__(self, signed=0):
            self.signed = signed

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::and::return'

    _M__and._t__return = IcePy.defineException('::and::return', _return, (), False, None, (('signed', (), IcePy._t_int, False, 0),))
    _return._ice_type = _M__and._t__return

    _M__and._return = _return
    del _return

if 'sizeof' not in _M__and.__dict__:
    _M__and.sizeof = Ice.createTempClass()
    class sizeof(_M__and._return):
        def __init__(self, signed=0, static=0, switch=0):
            _M__and._return.__init__(self, signed)
            self.static = static
            self.switch = switch

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::and::sizeof'

    _M__and._t_sizeof = IcePy.defineException('::and::sizeof', sizeof, (), False, _M__and._t__return, (
        ('static', (), IcePy._t_int, False, 0),
        ('switch', (), IcePy._t_int, False, 0)
    ))
    sizeof._ice_type = _M__and._t_sizeof

    _M__and.sizeof = sizeof
    del sizeof

if 'friend' not in _M__and.__dict__:
    _M__and.friend = Ice.createTempClass()
    class friend(object):
        def __init__(self):
            if Ice.getType(self) == _M__and.friend:
                raise RuntimeError('_and.friend is an abstract class')

        def goto(self, _if, d, inline, private, mutable, namespace, new, _not, operator, _or, protected, public, register):
            raise NotImplementedError("method 'goto' not implemented")

        def objc(self, bycopy, byref, id, IMP, _in, inout, nil, NO, oneway, SEL, super, YES):
            raise NotImplementedError("method 'objc' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_friend)

        __repr__ = __str__

    _M__and._t_friend = IcePy.defineValue('::and::friend', friend, -1, (), False, True, None, ())
    friend._ice_type = _M__and._t_friend

    _M__and.friend = friend
    del friend

_M__and.template = 0

_M__and.this = 0

_M__and.throw = 0

_M__and.typedef = 0

_M__and.typeid = 0

_M__and.typename = 0

_M__and.union = 0

_M__and.unsigned = 0

_M__and.using = 0

_M__and.virtual = 0

_M__and._while = 0

_M__and.xor = 0

# End of module _and
