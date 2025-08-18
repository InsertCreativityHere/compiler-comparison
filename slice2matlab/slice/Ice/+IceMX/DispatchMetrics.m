classdef DispatchMetrics < IceMX.Metrics
    %DISPATCHMETRICS Provides information on servant dispatches.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.DispatchMetrics()
    %       obj = IceMX.DispatchMetrics(userException, size, replySize)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   DispatchMetrics Properties:
    %     userException - The number of dispatches that failed with a user exception.
    %     size - The size of the incoming requests.
    %     replySize - The size of the replies.
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % USEREXCEPTION The number of dispatches that failed with a user exception.
        %   int32 scalar
        userException (1, 1) int32 = 0
        
        % SIZE The size of the incoming requests. This corresponds to the size of the marshaled input parameters.
        %   int64 scalar
        size (1, 1) int64 = 0
        
        % REPLYSIZE The size of the replies. This corresponds to the size of the marshaled output and return parameters.
        %   int64 scalar
        replySize (1, 1) int64 = 0
    end
    methods
        function obj = DispatchMetrics(id, total, current, totalLifetime, failures, userException, size, replySize)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 8, 'Invalid number of arguments');
                superArgs = {id, total, current, totalLifetime, failures};
            end
            obj = obj@IceMX.Metrics(superArgs{:});
            if nargin > 0
                obj.userException = userException;
                obj.size = size;
                obj.replySize = replySize;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::DispatchMetrics', -1, false);
            os.writeInt(obj.userException);
            os.writeLong(obj.size);
            os.writeLong(obj.replySize);
            os.endSlice();
            iceWriteImpl@IceMX.Metrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.userException = is.readInt();
            obj.size = is.readLong();
            obj.replySize = is.readLong();
            is.endSlice();
            iceReadImpl@IceMX.Metrics(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::DispatchMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::DispatchMetrics'
    end
end
