classdef PSUnknownException < Test.PreservedException
    %PSUNKNOWNEXCEPTION
    %
    %   PSUnknownException Properties:
    %     p
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % P
        %   Test.PSUnknown2 scalar | empty array of Test.PSUnknown2
        p {mustBeScalarOrEmpty} = Test.PSUnknown2.empty
    end
    methods
        function obj = PSUnknownException(errID, msg)
            if nargin == 0
                errID = 'Test:PSUnknownException';
                msg = 'Test.PSUnknownException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.PreservedException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::PSUnknownException';
        end
    end
    methods (Hidden)
        function obj = icePostUnmarshal(obj)
            obj.p = obj.p.value;
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.p = IceInternal.ValueHolder();
            is.readValue(@(v) obj.p.set(v), 'Test.PSUnknown2');
            is.endSlice();
            obj = iceReadImpl@Test.PreservedException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PSUnknownException'
    end
end
