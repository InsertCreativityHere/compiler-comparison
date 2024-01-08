% endwhile   Summary of endwhile
%
% endwhile Properties:
%   eval
%   exit

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef endwhile < and.endif
    properties
        eval int32
        exit int32
    end
    methods
        function obj = endwhile(ice_exid, ice_exmsg, endswitch, eval, exit)
            if nargin <= 2
                endswitch = 0;
                eval = 0;
                exit = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:endwhile';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.endwhile';
            end
            obj = obj@and.endif(ice_exid, ice_exmsg, endswitch);
            obj.eval = eval;
            obj.exit = exit;
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
