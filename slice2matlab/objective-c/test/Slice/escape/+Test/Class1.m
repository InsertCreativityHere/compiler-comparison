% Class1   Summary of Class1
%
% Class1 Properties:
%   reason
%   isa
%   autorelease
%   classForCoder
%   copy
%   dealloc
%   description
%   hash
%   init
%   isProxy
%   mutableCopy
%   release
%   retain
%   retainCount
%   self
%   superclass
%   zone

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Inherit.ice by slice2matlab version 3.7.9

classdef Class1 < Ice.Value
    properties
        reason int32
        isa int32
        autorelease int32
        classForCoder int32
        copy int32
        dealloc int32
        description int32
        hash int32
        init int32
        isProxy int32
        mutableCopy int32
        release int32
        retain int32
        retainCount int32
        self int32
        superclass int32
        zone int32
    end
    methods
        function obj = Class1(reason, isa, autorelease, classForCoder, copy, dealloc, description, hash, init, isProxy, mutableCopy, release, retain, retainCount, self, superclass, zone)
            if nargin == 0
                obj.reason = 0;
                obj.isa = 0;
                obj.autorelease = 0;
                obj.classForCoder = 0;
                obj.copy = 0;
                obj.dealloc = 0;
                obj.description = 0;
                obj.hash = 0;
                obj.init = 0;
                obj.isProxy = 0;
                obj.mutableCopy = 0;
                obj.release = 0;
                obj.retain = 0;
                obj.retainCount = 0;
                obj.self = 0;
                obj.superclass = 0;
                obj.zone = 0;
            elseif ne(reason, IceInternal.NoInit.Instance)
                obj.reason = reason;
                obj.isa = isa;
                obj.autorelease = autorelease;
                obj.classForCoder = classForCoder;
                obj.copy = copy;
                obj.dealloc = dealloc;
                obj.description = description;
                obj.hash = hash;
                obj.init = init;
                obj.isProxy = isProxy;
                obj.mutableCopy = mutableCopy;
                obj.release = release;
                obj.retain = retain;
                obj.retainCount = retainCount;
                obj.self = self;
                obj.superclass = superclass;
                obj.zone = zone;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Class1', -1, true);
            os.writeInt(obj.reason);
            os.writeInt(obj.isa);
            os.writeInt(obj.autorelease);
            os.writeInt(obj.classForCoder);
            os.writeInt(obj.copy);
            os.writeInt(obj.dealloc);
            os.writeInt(obj.description);
            os.writeInt(obj.hash);
            os.writeInt(obj.init);
            os.writeInt(obj.isProxy);
            os.writeInt(obj.mutableCopy);
            os.writeInt(obj.release);
            os.writeInt(obj.retain);
            os.writeInt(obj.retainCount);
            os.writeInt(obj.self);
            os.writeInt(obj.superclass);
            os.writeInt(obj.zone);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readInt();
            obj.isa = is.readInt();
            obj.autorelease = is.readInt();
            obj.classForCoder = is.readInt();
            obj.copy = is.readInt();
            obj.dealloc = is.readInt();
            obj.description = is.readInt();
            obj.hash = is.readInt();
            obj.init = is.readInt();
            obj.isProxy = is.readInt();
            obj.mutableCopy = is.readInt();
            obj.release = is.readInt();
            obj.retain = is.readInt();
            obj.retainCount = is.readInt();
            obj.self = is.readInt();
            obj.superclass = is.readInt();
            obj.zone = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Class1';
        end
    end
end
