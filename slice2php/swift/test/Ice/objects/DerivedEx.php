<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `DerivedEx.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Test.php';
}

namespace Test
{
    global $Test__t_DerivedEx;
    class DerivedEx extends \Test\BaseEx
    {
        public function __construct($reason='')
        {
            parent::__construct($reason);
        }

        public function ice_id()
        {
            return '::Test::DerivedEx';
        }

        public function __toString(): string
        {
            global $Test__t_DerivedEx;
            return IcePHP_stringifyException($this, $Test__t_DerivedEx);
        }
    }

    $Test__t_DerivedEx = IcePHP_defineException('::Test::DerivedEx', '\\Test\\DerivedEx', false, $Test__t_BaseEx, null);
}
?>
