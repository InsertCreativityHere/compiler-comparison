<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'DerivedEx.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace
{
    require_once 'Test.php';
}

namespace Test
{
    global $Test__t_DerivedEx;
    class DerivedEx extends \Test\BaseEx
    {
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

    $Test__t_DerivedEx = IcePHP_defineException('::Test::DerivedEx', '\\Test\\DerivedEx', $Test__t_BaseEx, null);
}
?>
