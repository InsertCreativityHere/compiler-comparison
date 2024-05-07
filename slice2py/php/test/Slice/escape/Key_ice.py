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

# Start of module _and
_M__and = Ice.openModule('_and')
__name__ = '_and'

if 'array' not in _M__and.__dict__:
    _M__and.array = Ice.createTempClass()
    class array(Ice.EnumBase):

        def __init__(self, _n, _v):
            Ice.EnumBase.__init__(self, _n, _v)

        def valueOf(self, _n):
            if _n in self._enumerators:
                return self._enumerators[_n]
            return None
        valueOf = classmethod(valueOf)

    array._as = array("as", 0)
    array._enumerators = { 0:array._as }

    _M__and._t_array = IcePy.defineEnum('::and::array', array, (), array._enumerators)

    _M__and.array = array
    del array

if 'xor' not in _M__and.__dict__:
    _M__and.xor = Ice.createTempClass()
    class xor(object):
        def __init__(self, abstract=0, clone=0, private=0, protected=0, public=0, this=0, throw=0, use=0, var=0):
            self.abstract = abstract
            self.clone = clone
            self.private = private
            self.protected = protected
            self.public = public
            self.this = this
            self.throw = throw
            self.use = use
            self.var = var

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self.abstract)
            _h = 5 * _h + Ice.getHash(self.clone)
            _h = 5 * _h + Ice.getHash(self.private)
            _h = 5 * _h + Ice.getHash(self.protected)
            _h = 5 * _h + Ice.getHash(self.public)
            _h = 5 * _h + Ice.getHash(self.this)
            _h = 5 * _h + Ice.getHash(self.throw)
            _h = 5 * _h + Ice.getHash(self.use)
            _h = 5 * _h + Ice.getHash(self.var)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M__and.xor):
                return NotImplemented
            else:
                if self.abstract is None or other.abstract is None:
                    if self.abstract != other.abstract:
                        return (-1 if self.abstract is None else 1)
                else:
                    if self.abstract < other.abstract:
                        return -1
                    elif self.abstract > other.abstract:
                        return 1
                if self.clone is None or other.clone is None:
                    if self.clone != other.clone:
                        return (-1 if self.clone is None else 1)
                else:
                    if self.clone < other.clone:
                        return -1
                    elif self.clone > other.clone:
                        return 1
                if self.private is None or other.private is None:
                    if self.private != other.private:
                        return (-1 if self.private is None else 1)
                else:
                    if self.private < other.private:
                        return -1
                    elif self.private > other.private:
                        return 1
                if self.protected is None or other.protected is None:
                    if self.protected != other.protected:
                        return (-1 if self.protected is None else 1)
                else:
                    if self.protected < other.protected:
                        return -1
                    elif self.protected > other.protected:
                        return 1
                if self.public is None or other.public is None:
                    if self.public != other.public:
                        return (-1 if self.public is None else 1)
                else:
                    if self.public < other.public:
                        return -1
                    elif self.public > other.public:
                        return 1
                if self.this is None or other.this is None:
                    if self.this != other.this:
                        return (-1 if self.this is None else 1)
                else:
                    if self.this < other.this:
                        return -1
                    elif self.this > other.this:
                        return 1
                if self.throw is None or other.throw is None:
                    if self.throw != other.throw:
                        return (-1 if self.throw is None else 1)
                else:
                    if self.throw < other.throw:
                        return -1
                    elif self.throw > other.throw:
                        return 1
                if self.use is None or other.use is None:
                    if self.use != other.use:
                        return (-1 if self.use is None else 1)
                else:
                    if self.use < other.use:
                        return -1
                    elif self.use > other.use:
                        return 1
                if self.var is None or other.var is None:
                    if self.var != other.var:
                        return (-1 if self.var is None else 1)
                else:
                    if self.var < other.var:
                        return -1
                    elif self.var > other.var:
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
            return IcePy.stringify(self, _M__and._t_xor)

        __repr__ = __str__

    _M__and._t_xor = IcePy.defineStruct('::and::xor', xor, (), (
        ('abstract', (), IcePy._t_int),
        ('clone', (), IcePy._t_int),
        ('private', (), IcePy._t_int),
        ('protected', (), IcePy._t_int),
        ('public', (), IcePy._t_int),
        ('this', (), IcePy._t_int),
        ('throw', (), IcePy._t_int),
        ('use', (), IcePy._t_int),
        ('var', (), IcePy._t_int)
    ))

    _M__and.xor = xor
    del xor

_M__and._t__break = IcePy.defineValue('::and::break', Ice.Value, -1, (), True, None, ())

if 'breakPrx' not in _M__and.__dict__:
    _M__and.breakPrx = Ice.createTempClass()
    class breakPrx(Ice.ObjectPrx):

        def _case(self, catch, context=None):
            return _M__and._break._op_case.invoke(self, ((catch, ), context))

        def caseAsync(self, catch, context=None):
            return _M__and._break._op_case.invokeAsync(self, ((catch, ), context))

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

    _break._op_case = IcePy.Operation('case', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (((), IcePy._t_int, False, 0),), None, ())

    _M__and._break = _break
    del _break

_M__and._t_function = IcePy.defineValue('::and::function', Ice.Value, -1, (), True, None, ())

if 'functionPrx' not in _M__and.__dict__:
    _M__and.functionPrx = Ice.createTempClass()
    class functionPrx(Ice.ObjectPrx):

        def _continue(self, declare, default, context=None):
            return _M__and.function._op_continue.invoke(self, ((declare, default), context))

        def continueAsync(self, declare, default, context=None):
            return _M__and.function._op_continue.invokeAsync(self, ((declare, default), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.functionPrx.ice_checkedCast(proxy, '::and::function', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.functionPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::function'
    _M__and._t_functionPrx = IcePy.defineProxy('::and::function', functionPrx)

    _M__and.functionPrx = functionPrx
    del functionPrx

    _M__and.function = Ice.createTempClass()
    class function(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::function')

        def ice_id(self, current=None):
            return '::and::function'

        @staticmethod
        def ice_staticId():
            return '::and::function'

        def _continue(self, declare, default, current=None):
            raise NotImplementedError("servant method '_continue' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_functionDisp)

        __repr__ = __str__

    _M__and._t_functionDisp = IcePy.defineClass('::and::function', function, (), None, ())
    function._ice_type = _M__and._t_functionDisp

    function._op_continue = IcePy.Operation('continue', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())

    _M__and.function = function
    del function

_M__and._t_die = IcePy.defineValue('::and::die', Ice.Value, -1, (), True, None, ())

if 'diePrx' not in _M__and.__dict__:
    _M__and.diePrx = Ice.createTempClass()
    class diePrx(Ice.ObjectPrx):

        def do(self, context=None):
            return _M__and.die._op_do.invoke(self, ((), context))

        def doAsync(self, context=None):
            return _M__and.die._op_do.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.diePrx.ice_checkedCast(proxy, '::and::die', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.diePrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::die'
    _M__and._t_diePrx = IcePy.defineProxy('::and::die', diePrx)

    _M__and.diePrx = diePrx
    del diePrx

    _M__and.die = Ice.createTempClass()
    class die(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::die')

        def ice_id(self, current=None):
            return '::and::die'

        @staticmethod
        def ice_staticId():
            return '::and::die'

        def do(self, current=None):
            raise NotImplementedError("servant method 'do' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_dieDisp)

        __repr__ = __str__

    _M__and._t_dieDisp = IcePy.defineClass('::and::die', die, (), None, ())
    die._ice_type = _M__and._t_dieDisp

    die._op_do = IcePy.Operation('do', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M__and.die = die
    del die

if 'echo' not in _M__and.__dict__:
    _M__and.echo = Ice.createTempClass()
    class echo(Ice.Value):
        def __init__(self, _if=0, _else=0, elseif=None, empty=0):
            self._if = _if
            self._else = _else
            self.elseif = elseif
            self.empty = empty

        def ice_id(self):
            return '::and::echo'

        @staticmethod
        def ice_staticId():
            return '::and::echo'

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_echo)

        __repr__ = __str__

    _M__and._t_echo = IcePy.defineValue('::and::echo', echo, -1, (), False, None, (
        ('_if', (), IcePy._t_int, False, 0),
        ('_else', (), IcePy._t_int, False, 0),
        ('elseif', (), _M__and._t_diePrx, False, 0),
        ('empty', (), IcePy._t_int, False, 0)
    ))
    echo._ice_type = _M__and._t_echo

    _M__and.echo = echo
    del echo

_M__and._t_enddeclare = IcePy.defineValue('::and::enddeclare', Ice.Value, -1, (), True, None, ())

if 'enddeclarePrx' not in _M__and.__dict__:
    _M__and.enddeclarePrx = Ice.createTempClass()
    class enddeclarePrx(_M__and.diePrx, _M__and.functionPrx):

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.enddeclarePrx.ice_checkedCast(proxy, '::and::enddeclare', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.enddeclarePrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::enddeclare'
    _M__and._t_enddeclarePrx = IcePy.defineProxy('::and::enddeclare', enddeclarePrx)

    _M__and.enddeclarePrx = enddeclarePrx
    del enddeclarePrx

    _M__and.enddeclare = Ice.createTempClass()
    class enddeclare(_M__and.die, _M__and.function):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::die', '::and::enddeclare', '::and::function')

        def ice_id(self, current=None):
            return '::and::enddeclare'

        @staticmethod
        def ice_staticId():
            return '::and::enddeclare'

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_enddeclareDisp)

        __repr__ = __str__

    _M__and._t_enddeclareDisp = IcePy.defineClass('::and::enddeclare', enddeclare, (), None, (_M__and._t_dieDisp, _M__and._t_functionDisp))
    enddeclare._ice_type = _M__and._t_enddeclareDisp

    _M__and.enddeclare = enddeclare
    del enddeclare

if '_t_endfor' not in _M__and.__dict__:
    _M__and._t_endfor = IcePy.defineSequence('::and::endfor', (), _M__and._t_array)

if '_t_endforeach' not in _M__and.__dict__:
    _M__and._t_endforeach = IcePy.defineDictionary('::and::endforeach', (), IcePy._t_string, _M__and._t_array)

if 'endif' not in _M__and.__dict__:
    _M__and.endif = Ice.createTempClass()
    class endif(Ice.UserException):
        def __init__(self, endswitch=0):
            self.endswitch = endswitch

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::and::endif'

    _M__and._t_endif = IcePy.defineException('::and::endif', endif, (), None, (('endswitch', (), IcePy._t_int, False, 0),))
    endif._ice_type = _M__and._t_endif

    _M__and.endif = endif
    del endif

if 'endwhile' not in _M__and.__dict__:
    _M__and.endwhile = Ice.createTempClass()
    class endwhile(_M__and.endif):
        def __init__(self, endswitch=0, eval=0, exit=0):
            _M__and.endif.__init__(self, endswitch)
            self.eval = eval
            self.exit = exit

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::and::endwhile'

    _M__and._t_endwhile = IcePy.defineException('::and::endwhile', endwhile, (), _M__and._t_endif, (
        ('eval', (), IcePy._t_int, False, 0),
        ('exit', (), IcePy._t_int, False, 0)
    ))
    endwhile._ice_type = _M__and._t_endwhile

    _M__and.endwhile = endwhile
    del endwhile

_M__and._t__for = IcePy.defineValue('::and::for', Ice.Value, -1, (), True, None, ())

if 'forPrx' not in _M__and.__dict__:
    _M__and.forPrx = Ice.createTempClass()
    class forPrx(Ice.ObjectPrx):

        def foreach(self, _if, _global, include, _return, list, new, static, context=None):
            return _M__and._for._op_foreach.invoke(self, ((_if, _global, include, _return, list, new, static), context))

        def foreachAsync(self, _if, _global, include, _return, list, new, static, context=None):
            return _M__and._for._op_foreach.invokeAsync(self, ((_if, _global, include, _return, list, new, static), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M__and.forPrx.ice_checkedCast(proxy, '::and::for', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M__and.forPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::and::for'
    _M__and._t_forPrx = IcePy.defineProxy('::and::for', forPrx)

    _M__and.forPrx = forPrx
    del forPrx

    _M__and._for = Ice.createTempClass()
    class _for(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::and::for')

        def ice_id(self, current=None):
            return '::and::for'

        @staticmethod
        def ice_staticId():
            return '::and::for'

        def foreach(self, _if, _global, include, _return, list, new, static, current=None):
            raise NotImplementedError("servant method 'foreach' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M__and._t_forDisp)

        __repr__ = __str__

    _M__and._t_forDisp = IcePy.defineClass('::and::for', _for, (), None, ())
    _for._ice_type = _M__and._t_forDisp

    _for._op_foreach = IcePy.Operation('foreach', Ice.OperationMode.Normal, False, None, (), (((), _M__and._t_breakPrx, False, 0), ((), _M__and._t_echo, False, 0), ((), _M__and._t_functionPrx, False, 0), ((), _M__and._t_diePrx, False, 0), ((), _M__and._t_enddeclarePrx, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), ((), _M__and._t_array, False, 0), (_M__and._t_endif, _M__and._t_endwhile))

    _M__and._for = _for
    del _for

_M__and._or = 0

_M__and._print = 0

_M__and.require_once = 0

# End of module _and
