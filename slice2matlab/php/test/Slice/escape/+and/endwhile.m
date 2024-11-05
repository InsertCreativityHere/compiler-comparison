
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef endwhile < and.endif
    properties
        eval int32
        exit int32
    end
    methods
        function obj = endwhile(errID, msg)
            if nargin == 0
                errID = 'and:endwhile';
                msg = 'and.endwhile';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@and.endif(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::endwhile';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.eval = is.readInt();
            obj.exit = is.readInt();
            is.endSlice();
            obj = iceReadImpl@and.endif(obj, is);
        end
    end
end
