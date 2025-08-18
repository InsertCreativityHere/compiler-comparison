classdef OptionOverrides < Ice.Value
    %OPTIONOVERRIDES
    %
    %   Creation
    %     Syntax
    %       obj = Test.Common.OptionOverrides()
    %       obj = Test.Common.OptionOverrides(protocol, mx, serialize, compress, ipv6)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   OptionOverrides Properties:
    %     protocol
    %     mx
    %     serialize
    %     compress
    %     ipv6
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PROTOCOL
        %   string vector | Ice.Unset
        protocol (1, :) = IceInternal.UnsetI.Instance
        
        % MX
        %   logical vector | Ice.Unset
        mx (1, :) = IceInternal.UnsetI.Instance
        
        % SERIALIZE
        %   logical vector | Ice.Unset
        serialize (1, :) = IceInternal.UnsetI.Instance
        
        % COMPRESS
        %   logical vector | Ice.Unset
        compress (1, :) = IceInternal.UnsetI.Instance
        
        % IPV6
        %   logical vector | Ice.Unset
        ipv6 (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = OptionOverrides(protocol, mx, serialize, compress, ipv6)
            if nargin > 0
                assert(nargin == 5, 'Invalid number of arguments');
                obj.protocol = protocol;
                obj.mx = mx;
                obj.serialize = serialize;
                obj.compress = compress;
                obj.ipv6 = ipv6;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Common::OptionOverrides', -1, true);
            os.writeStringSeqOpt(1, obj.protocol);
            os.writeBoolSeqOpt(2, obj.mx);
            os.writeBoolSeqOpt(3, obj.serialize);
            os.writeBoolSeqOpt(4, obj.compress);
            os.writeBoolSeqOpt(5, obj.ipv6);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.protocol = is.readStringSeqOpt(1);
            obj.mx = is.readBoolSeqOpt(2);
            obj.serialize = is.readBoolSeqOpt(3);
            obj.compress = is.readBoolSeqOpt(4);
            obj.ipv6 = is.readBoolSeqOpt(5);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Common::OptionOverrides';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Common::OptionOverrides'
    end
end
