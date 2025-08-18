classdef ParseException < Ice.UserException
    %PARSEEXCEPTION The exception that is thrown when an error occurs during the parsing of an IceGrid XML file.
    %
    %   ParseException Properties:
    %     reason - The reason for the failure.
    %
    %   Generated from FileParser.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON The reason for the failure.
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = ParseException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ParseException';
                msg = 'IceGrid.ParseException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ParseException';
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
        TypeId char = '::IceGrid::ParseException'
    end
end
