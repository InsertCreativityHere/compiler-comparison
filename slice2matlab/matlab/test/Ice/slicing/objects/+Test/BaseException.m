classdef BaseException < Ice.UserException
    %BASEEXCEPTION
    %
    %   BaseException Properties:
    %     sbe
    %     pb
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SBE
        %   character vector
        sbe (1, :) char
        
        % PB
        %   Test.B scalar | empty array of Test.B
        pb {mustBeScalarOrEmpty} = Test.B.empty
    end
    methods
        function obj = BaseException(errID, msg)
            if nargin == 0
                errID = 'Test:BaseException';
                msg = 'Test.BaseException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::BaseException';
        end
    end
    methods (Hidden)
        function obj = icePostUnmarshal(obj)
            obj.pb = obj.pb.value;
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.sbe = is.readString();
            obj.pb = IceInternal.ValueHolder();
            is.readValue(@(v) obj.pb.set(v), 'Test.B');
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::BaseException'
    end
end
