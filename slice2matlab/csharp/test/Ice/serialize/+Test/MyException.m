% MyException   Summary of MyException
%
% MyException Properties:
%   name
%   b
%   s
%   i
%   l
%   vs
%   rs
%   c
%   p
%   vss
%   vsl
%   vsll
%   vssk
%   vsq
%   isd
%   ivd
%   ipd
%   issd
%   optName
%   optInt
%   optValStruct
%   optRefStruct
%   optEnum
%   optClass
%   optProxy

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef MyException < Ice.UserException
    properties
        name char
        b uint8
        s int16
        i int32
        l int64
        vs Test.ValStruct
        rs Test.RefStruct
        c
        p
        vss
        vsl
        vsll
        vssk
        vsq
        isd containers.Map
        ivd containers.Map
        ipd containers.Map
        issd containers.Map
        optName
        optInt
        optValStruct
        optRefStruct
        optEnum
        optClass
        optProxy
    end
    methods
        function obj = MyException(ice_exid, ice_exmsg, name, b, s, i, l, vs, rs, c, p, vss, vsl, vsll, vssk, vsq, isd, ivd, ipd, issd, optName, optInt, optValStruct, optRefStruct, optEnum, optClass, optProxy)
            if nargin <= 2
                name = '';
                b = 0;
                s = 0;
                i = 0;
                l = 0;
                vs = Test.ValStruct();
                rs = Test.RefStruct();
                c = [];
                p = [];
                vss = [];
                vsl = [];
                vsll = [];
                vssk = [];
                vsq = [];
                isd = containers.Map('KeyType', 'int32', 'ValueType', 'char');
                ivd = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                ipd = containers.Map('KeyType', 'int32', 'ValueType', 'any');
                issd = containers.Map('KeyType', 'int32', 'ValueType', 'char');
                optName = IceInternal.UnsetI.Instance;
                optInt = IceInternal.UnsetI.Instance;
                optValStruct = IceInternal.UnsetI.Instance;
                optRefStruct = IceInternal.UnsetI.Instance;
                optEnum = IceInternal.UnsetI.Instance;
                optClass = IceInternal.UnsetI.Instance;
                optProxy = IceInternal.UnsetI.Instance;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:MyException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.MyException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
            obj.b = b;
            obj.s = s;
            obj.i = i;
            obj.l = l;
            obj.vs = vs;
            obj.rs = rs;
            obj.c = c;
            obj.p = p;
            obj.vss = vss;
            obj.vsl = vsl;
            obj.vsll = vsll;
            obj.vssk = vssk;
            obj.vsq = vsq;
            obj.isd = isd;
            obj.ivd = ivd;
            obj.ipd = ipd;
            obj.issd = issd;
            obj.optName = optName;
            obj.optInt = optInt;
            obj.optValStruct = optValStruct;
            obj.optRefStruct = optRefStruct;
            obj.optEnum = optEnum;
            obj.optClass = optClass;
            obj.optProxy = optProxy;
        end
        function id = ice_id(~)
            id = '::Test::MyException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.c = obj.c.value;
            obj.optClass = obj.optClass.value;
            obj.rs = obj.rs.ice_convert();
            if obj.optRefStruct ~= Ice.Unset
                obj.optRefStruct = obj.optRefStruct.ice_convert();
            end
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.b = is.readByte();
            obj.s = is.readShort();
            obj.i = is.readInt();
            obj.l = is.readLong();
            obj.vs = Test.ValStruct.ice_read(is);
            obj.rs = Test.RefStruct.ice_read(is);
            obj.c = IceInternal.ValueHolder();
            is.readValue(@(v) obj.c.set(v), 'Test.MyClass');
            obj.p = Test.MyInterfacePrx.ice_read(is);
            obj.vss = Test.ValStructS.read(is);
            obj.vsl = Test.ValStructList.read(is);
            obj.vsll = Test.ValStructLinkedList.read(is);
            obj.vssk = Test.ValStructStack.read(is);
            obj.vsq = Test.ValStructQueue.read(is);
            obj.isd = Test.IntStringD.read(is);
            obj.ivd = Test.IntValStructD.read(is);
            obj.ipd = Test.IntProxyD.read(is);
            obj.issd = Test.IntStringSD.read(is);
            obj.optName = is.readStringOpt(1);
            obj.optInt = is.readIntOpt(2);
            obj.optValStruct = Test.ValStruct.ice_readOpt(is, 3);
            obj.optRefStruct = Test.RefStruct.ice_readOpt(is, 4);
            obj.optEnum = Test.MyEnum.ice_readOpt(is, 5);
            obj.optClass = IceInternal.ValueHolder();
            is.readValueOpt(6, @(v) obj.optClass.set(v), 'Test.MyClass');
            if is.readOptional(7, Ice.OptionalFormat.FSize)
                is.skip(4);
                obj.optProxy = Test.MyInterfacePrx.ice_read(is);
            end
            is.endSlice();
        end
    end
end
