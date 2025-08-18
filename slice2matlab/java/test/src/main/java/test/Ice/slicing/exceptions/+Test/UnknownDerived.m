classdef UnknownDerived < Test.Base
    %UNKNOWNDERIVED
    %
    %   UnknownDerived Properties:
    %     ud
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % UD
        %   character vector
        ud (1, :) char
    end
    methods
        function obj = UnknownDerived(errID, msg)
            if nargin == 0
                errID = 'Test:UnknownDerived';
                msg = 'Test.UnknownDerived';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.Base(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UnknownDerived';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ud = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::UnknownDerived'
    end
end
