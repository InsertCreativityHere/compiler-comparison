classdef CollocatedMetrics < IceMX.ChildInvocationMetrics
    %COLLOCATEDMETRICS Provides information on invocations that are collocated. Collocated metrics are embedded within
    %   <a href="matlab:help IceMX.InvocationMetrics -displayBanner">InvocationMetrics</a>.
    %
    %   Creation
    %     Syntax
    %       obj = IceMX.CollocatedMetrics()
    %
    %   Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceMX::CollocatedMetrics', -1, false);
            os.endSlice();
            iceWriteImpl@IceMX.ChildInvocationMetrics(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@IceMX.ChildInvocationMetrics(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceMX::CollocatedMetrics';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceMX::CollocatedMetrics'
    end
end
