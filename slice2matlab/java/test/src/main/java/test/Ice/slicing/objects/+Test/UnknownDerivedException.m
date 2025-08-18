classdef UnknownDerivedException < Test.BaseException
    %UNKNOWNDERIVEDEXCEPTION
    %
    %   UnknownDerivedException Properties:
    %     sude
    %     pd2
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SUDE
        %   character vector
        sude (1, :) char
        
        % PD2
        %   Test.D2 scalar | empty array of Test.D2
        pd2 {mustBeScalarOrEmpty} = Test.D2.empty
    end
    methods
        function obj = UnknownDerivedException(errID, msg)
            if nargin == 0
                errID = 'Test:UnknownDerivedException';
                msg = 'Test.UnknownDerivedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UnknownDerivedException';
        end
    end
    methods (Hidden)
        function obj = icePostUnmarshal(obj)
            obj.pd2 = obj.pd2.value;
            obj = icePostUnmarshal@Test.BaseException(obj);
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.sude = is.readString();
            obj.pd2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.pd2.set(v), 'Test.D2');
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::UnknownDerivedException'
    end
end
