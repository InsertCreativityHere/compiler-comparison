% SessionCreationException   Summary of SessionCreationException
%
% Throws when the session cannot be created.
%
% SessionCreationException Properties:
%   error

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionCreationException < Ice.UserException
    properties
        error DataStormContract.SessionCreationError
    end
    methods
        function obj = SessionCreationException(errID, msg)
            if nargin == 0
                errID = 'DataStormContract:SessionCreationException';
                msg = 'DataStormContract.SessionCreationException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::DataStormContract::SessionCreationException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.error = DataStormContract.SessionCreationError.ice_read(is);
            is.endSlice();
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::DataStormContract::SessionCreationException'
    end
end
