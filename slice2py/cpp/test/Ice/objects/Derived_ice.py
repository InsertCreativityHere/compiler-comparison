# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Derived.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice
import IcePy
import builtins as _builtins
import Test_ice
import Forward_ice

# Included module Test
_M_Test = Ice.openModule('Test')

# Included module Test.Inner
_M_Test.Inner = Ice.openModule('Test.Inner')

# Included module Test.Inner.Sub
_M_Test.Inner.Sub = Ice.openModule('Test.Inner.Sub')

# Start of module Test
__name__ = 'Test'
_M_Test.Derived = None
class Derived(_M_Test.Base):
    def __init__(self, theS=None, str='', b=''):
        _M_Test.Base.__init__(self, theS, str)
        self.b = b

    def ice_id(self):
        return '::Test::Derived'

    @staticmethod
    def ice_staticId():
        return '::Test::Derived'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_Derived)

    __repr__ = __str__

_M_Test._t_Derived = IcePy.defineValue('::Test::Derived', Derived, -1, (), False, _M_Test._t_Base, (('b', (), IcePy._t_string, False, 0),))
Derived._ice_type = _M_Test._t_Derived

_M_Test.Derived = Derived
del Derived

# End of module Test
