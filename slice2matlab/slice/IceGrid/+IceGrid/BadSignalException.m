classdef BadSignalException < Ice.UserException
    %BADSIGNALEXCEPTION The exception that is thrown when an unknown signal is sent to a server.
    %
    %   BadSignalException Properties:
    %     reason - The details of the unknown signal.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON The details of the unknown signal.
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = BadSignalException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:BadSignalException';
                msg = 'IceGrid.BadSignalException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::BadSignalException';
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
        TypeId char = '::IceGrid::BadSignalException'
    end
end
