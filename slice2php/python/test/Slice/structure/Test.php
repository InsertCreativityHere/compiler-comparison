<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_IntSeq;

    if(!isset($Test__t_IntSeq))
    {
        global $IcePHP__t_int;
        $Test__t_IntSeq = IcePHP_defineSequence('::Test::IntSeq', $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_StringDict;

    if(!isset($Test__t_StringDict))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_string;
        $Test__t_StringDict = IcePHP_defineDictionary('::Test::StringDict', $IcePHP__t_string, $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_S1;
    class S1
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function __toString(): string
        {
            global $Test__t_S1;
            return IcePHP_stringify($this, $Test__t_S1);
        }

        public $name;
    }

    global $IcePHP__t_string;
    $Test__t_S1 = IcePHP_defineStruct('::Test::S1', '\\Test\\S1', array(
        array('name', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_S2;
    class S2
    {
        public function __construct($bo=false, $by=0, $sh=0, $i=0, $l=0, $str='', $seq=null, $s=null)
        {
            $this->bo = $bo;
            $this->by = $by;
            $this->sh = $sh;
            $this->i = $i;
            $this->l = $l;
            $this->str = $str;
            $this->seq = $seq;
            $this->s = is_null($s) ? new \Test\S1 : $s;
        }

        public function __toString(): string
        {
            global $Test__t_S2;
            return IcePHP_stringify($this, $Test__t_S2);
        }

        public $bo;
        public $by;
        public $sh;
        public $i;
        public $l;
        public $str;
        public $seq;
        public $s;
    }

    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_string;
    global $Test__t_IntSeq;
    global $Test__t_S1;
    $Test__t_S2 = IcePHP_defineStruct('::Test::S2', '\\Test\\S2', array(
        array('bo', $IcePHP__t_bool),
        array('by', $IcePHP__t_byte),
        array('sh', $IcePHP__t_short),
        array('i', $IcePHP__t_int),
        array('l', $IcePHP__t_long),
        array('str', $IcePHP__t_string),
        array('seq', $Test__t_IntSeq),
        array('s', $Test__t_S1)));
}

namespace Test
{
    global $Test__t_C;
    class C extends \Ice\Value
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function ice_id()
        {
            return '::Test::C';
        }

        public static function ice_staticId()
        {
            return '::Test::C';
        }

        public function __toString(): string
        {
            global $Test__t_C;
            return IcePHP_stringify($this, $Test__t_C);
        }

        public $name;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_C = IcePHP_defineClass('::Test::C', '\\Test\\C', -1, false, false, $Ice__t_Value, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_S3;
    class S3
    {
        public function __construct($obj=null, $sd=null, $prx=null)
        {
            $this->obj = $obj;
            $this->sd = $sd;
            $this->prx = $prx;
        }

        public function __toString(): string
        {
            global $Test__t_S3;
            return IcePHP_stringify($this, $Test__t_S3);
        }

        public $obj;
        public $sd;
        public $prx;
    }

    global $Test__t_C;
    global $Test__t_StringDict;
    global $Ice__t_ObjectPrx;
    $Test__t_S3 = IcePHP_defineStruct('::Test::S3', '\\Test\\S3', array(
        array('obj', $Test__t_C),
        array('sd', $Test__t_StringDict),
        array('prx', $Ice__t_ObjectPrx)));
}
?>
