classdef (Sealed) StructValue
    %STRUCTVALUE
    %
    %   Creation
    %     Syntax
    %       obj = Test.StructValue()
    %       obj = Test.StructValue(firstName, lastName, age)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   StructValue Properties:
    %     firstName
    %     lastName
    %     age
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FIRSTNAME
        %   character vector
        firstName (1, :) char
        
        % LASTNAME
        %   character vector
        lastName (1, :) char
        
        % AGE
        %   int32 scalar
        age (1, 1) int32
    end
    methods
        function obj = StructValue(firstName, lastName, age)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = Test.StructValue();
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
