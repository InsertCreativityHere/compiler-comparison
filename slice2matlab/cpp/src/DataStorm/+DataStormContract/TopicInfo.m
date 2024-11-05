
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicInfo
    properties
        % name - The topic name.
        name char
        % ids - The id of topic writers or readers.
        ids
    end
    methods
        function obj = TopicInfo(name, ids)
            if nargin == 0
                obj.name = '';
                obj.ids = [];
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.ids = ids;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.TopicInfo(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.ids = is.readLongSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.TopicInfo();
            end
            os.writeString(v.name);
            os.writeLongSeq(v.ids);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.TopicInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.TopicInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
