% ClassStruct   Summary of ClassStruct
%
% ClassStruct Properties:
%   otherSeq
%   other
%   y

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef ClassStruct
    properties
        otherSeq
        other Test.ClassOtherStruct
        y int32
    end
    methods
        function obj = ClassStruct(otherSeq, other, y)
            if nargin == 0
                obj.otherSeq = [];
                obj.other = Test.ClassOtherStruct();
                obj.y = 0;
            elseif ne(otherSeq, IceInternal.NoInit.Instance)
                obj.otherSeq = otherSeq;
                obj.other = other;
                obj.y = y;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.ClassStruct(IceInternal.NoInit.Instance);
            r.otherSeq = Test.ClassOtherStructSeq.read(is);
            r.other = Test.ClassOtherStruct.ice_read(is);
            r.y = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.ClassStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.ClassStruct();
            end
            Test.ClassOtherStructSeq.write(os, v.otherSeq);
            Test.ClassOtherStruct.ice_write(os, v.other);
            os.writeInt(v.y);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.ClassStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
