classdef (Sealed) EventData
    %EVENTDATA The event data.
    %
    %   Creation
    %     Syntax
    %       obj = IceStorm.EventData()
    %       obj = IceStorm.EventData(op, mode, data, context)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   EventData Properties:
    %     op - The operation name.
    %     mode - The operation mode.
    %     data - The encoded data for the operation's input parameters.
    %     context - The Ice::Current::Context data from the originating request.
    %
    %   Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % OP The operation name.
        %   character vector
        op (1, :) char
        
        % MODE The operation mode.
        %   Ice.OperationMode scalar
        mode (1, 1) Ice.OperationMode
        
        % DATA The encoded data for the operation's input parameters.
        %   uint8 vector
        data (1, :) uint8
        
        % CONTEXT The Ice::Current::Context data from the originating request.
        %   string, string) scalar
        context (1, 1) dictionary = configureDictionary('char', 'char')
    end
    methods
        function obj = EventData(op, mode, data, context)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.op = op;
                obj.mode = mode;
                obj.data = data;
                obj.context = context;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = IceStorm.EventData();
            r.op = is.readString();
            r.mode = Ice.OperationMode.ice_read(is);
            r.data = is.readByteSeq();
            r.context = Ice.Context.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStorm.EventData();
            end
            os.writeString(v.op);
            Ice.OperationMode.ice_write(os, v.mode);
            os.writeByteSeq(v.data);
            Ice.Context.write(os, v.context);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.EventData.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.EventData.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
