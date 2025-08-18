classdef AllocationException < Ice.UserException
    %ALLOCATIONEXCEPTION The exception that is thrown when the allocation of an object failed.
    %
    %   AllocationException Properties:
    %     reason - The reason why the object couldn't be allocated.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON The reason why the object couldn't be allocated.
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = AllocationException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AllocationException';
                msg = 'IceGrid.AllocationException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AllocationException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::AllocationException'
    end
end
