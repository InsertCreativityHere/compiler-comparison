classdef ExceptionNoDefaultsBase < Ice.UserException
    %EXCEPTIONNODEFAULTSBASE
    %
    %   ExceptionNoDefaultsBase Properties:
    %     str
    %     c1
    %     bs
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % STR
        %   character vector
        str (1, :) char
        
        % C1
        %   Test.Color scalar
        c1 (1, 1) Test.Color
        
        % BS
        %   uint8 vector
        bs (1, :) uint8
    end
    methods
        function obj = ExceptionNoDefaultsBase(errID, msg)
            if nargin == 0
                errID = 'Test:ExceptionNoDefaultsBase';
                msg = 'Test.ExceptionNoDefaultsBase';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::ExceptionNoDefaultsBase';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.c1 = Test.Color.ice_read(is);
            obj.bs = is.readByteSeq();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ExceptionNoDefaultsBase'
    end
end
