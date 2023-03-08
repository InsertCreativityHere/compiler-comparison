% BStruct   Summary of BStruct
%
% BStruct Properties:
%   bMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef BStruct
    properties
        bMem
    end
    methods
        function obj = BStruct(bMem)
            if nargin == 0
                obj.bMem = [];
            elseif ne(bMem, IceInternal.NoInit.Instance)
                obj.bMem = bMem;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.bMem = obj.bMem.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.AAA.BStruct(IceInternal.NoInit.Instance);
            bMem_ = IceInternal.ValueHolder();
            r.bMem = bMem_;
            is.readValue(@(v_) bMem_.set(v_), 'Test.AAA.B');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.AAA.BStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.AAA.BStruct();
            end
            os.writeValue(v.bMem);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.AAA.BStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
