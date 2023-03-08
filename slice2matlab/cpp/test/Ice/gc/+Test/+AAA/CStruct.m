% CStruct   Summary of CStruct
%
% CStruct Properties:
%   cMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef CStruct
    properties
        cMem
    end
    methods
        function obj = CStruct(cMem)
            if nargin == 0
                obj.cMem = [];
            elseif ne(cMem, IceInternal.NoInit.Instance)
                obj.cMem = cMem;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.cMem = obj.cMem.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.AAA.CStruct(IceInternal.NoInit.Instance);
            cMem_ = IceInternal.ValueHolder();
            r.cMem = cMem_;
            is.readValue(@(v_) cMem_.set(v_), 'Test.AAA.C');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.AAA.CStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.AAA.CStruct();
            end
            os.writeValue(v.cMem);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.AAA.CStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
