classdef KnownIntermediate < Test.Base
    %KNOWNINTERMEDIATE
    %
    %   KnownIntermediate Properties:
    %     ki
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % KI
        %   character vector
        ki (1, :) char
    end
    methods
        function obj = KnownIntermediate(errID, msg)
            if nargin == 0
                errID = 'Test:KnownIntermediate';
                msg = 'Test.KnownIntermediate';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.Base(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::KnownIntermediate';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ki = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::KnownIntermediate'
    end
end
