classdef clone < abstract.hashCode
    %CLONE
    %
    %   clone Properties:
    %     native
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NATIVE
        %   character vector
        native (1, :) char
    end
    methods
        function obj = clone(errID, msg)
            if nargin == 0
                errID = 'abstract:clone';
                msg = 'abstract.clone';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@abstract.hashCode(errID, msg);
        end
        function id = ice_id(~)
            id = '::abstract::clone';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.native = is.readString();
            is.endSlice();
            obj = iceReadImpl@abstract.hashCode(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::abstract::clone'
    end
end
