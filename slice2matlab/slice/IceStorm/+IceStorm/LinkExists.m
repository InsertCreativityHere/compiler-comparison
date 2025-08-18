classdef LinkExists < Ice.UserException
    %LINKEXISTS The exception that is thrown when attempting to create a link that already exists.
    %
    %   LinkExists Properties:
    %     name - The name of the linked topic.
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the linked topic.
        %   character vector
        name (1, :) char
    end
    methods
        function obj = LinkExists(errID, msg)
            if nargin == 0
                errID = 'IceStorm:LinkExists';
                msg = 'IceStorm.LinkExists';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStorm::LinkExists';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceStorm::LinkExists'
    end
end
