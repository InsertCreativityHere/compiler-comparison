classdef fixed < Ice.UserException
    %FIXED
    %
    %   fixed Properties:
    %     for
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FOR
        %   int32 scalar
        for (1, 1) int32
    end
    methods
        function obj = fixed(errID, msg)
            if nargin == 0
                errID = 'abstract:fixed';
                msg = 'abstract.fixed';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::abstract::fixed';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.for = is.readInt();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::abstract::fixed'
    end
end
