
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef StructValue
    properties
        firstName char
        lastName char
        age int32
    end
    methods
        function obj = StructValue(firstName, lastName, age)
            if nargin == 0
                obj.firstName = '';
                obj.lastName = '';
                obj.age = 0;
            elseif ne(firstName, IceInternal.NoInit.Instance)
                obj.firstName = firstName;
                obj.lastName = lastName;
                obj.age = age;
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
            r = Test.StructValue(IceInternal.NoInit.Instance);
            r.firstName = is.readString();
            r.lastName = is.readString();
            r.age = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.StructValue();
            end
            os.writeString(v.firstName);
            os.writeString(v.lastName);
            os.writeInt(v.age);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.StructValue.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.StructValue.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
