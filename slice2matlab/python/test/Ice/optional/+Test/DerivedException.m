classdef DerivedException < Test.OptionalException
    %DERIVEDEXCEPTION
    %
    %   DerivedException Properties:
    %     d1
    %     ss
    %     d2
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % D1
        %   character vector
        d1 (1, :) char
        
        % SS
        %   character vector | Ice.Unset
        ss (1, :) = sprintf('test')
        
        % D2
        %   character vector
        d2 (1, :) char
    end
    methods
        function obj = DerivedException(errID, msg)
            if nargin == 0
                errID = 'Test:DerivedException';
                msg = 'Test.DerivedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.OptionalException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::DerivedException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.d1 = is.readString();
            obj.d2 = is.readString();
            obj.ss = is.readStringOpt(600);
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::DerivedException'
    end
end
