# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Metrics.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require 'Ice/Metrics.rb'

module ::IceMX

    if not defined?(::IceMX::TopicMetrics_Mixin)

        module ::IceMX::TopicMetrics_Mixin
        end
        class TopicMetrics < ::IceMX::Metrics

            def initialize(id='', total=0, current=0, totalLifetime=0, failures=0, published=0, forwarded=0)
                super(id, total, current, totalLifetime, failures)
                @published = published
                @forwarded = forwarded
            end

            attr_accessor :published, :forwarded
        end

        if not defined?(::IceMX::T_TopicMetrics)
            T_TopicMetrics = ::Ice::__declareClass('::IceMX::TopicMetrics')
        end

        T_TopicMetrics.defineClass(TopicMetrics, -1, false, false, ::IceMX::T_Metrics, [
            ['published', ::Ice::T_long, false, 0],
            ['forwarded', ::Ice::T_long, false, 0]
        ])
    end

    if not defined?(::IceMX::SubscriberMetrics_Mixin)

        module ::IceMX::SubscriberMetrics_Mixin
        end
        class SubscriberMetrics < ::IceMX::Metrics

            def initialize(id='', total=0, current=0, totalLifetime=0, failures=0, queued=0, outstanding=0, delivered=0)
                super(id, total, current, totalLifetime, failures)
                @queued = queued
                @outstanding = outstanding
                @delivered = delivered
            end

            attr_accessor :queued, :outstanding, :delivered
        end

        if not defined?(::IceMX::T_SubscriberMetrics)
            T_SubscriberMetrics = ::Ice::__declareClass('::IceMX::SubscriberMetrics')
        end

        T_SubscriberMetrics.defineClass(SubscriberMetrics, -1, false, false, ::IceMX::T_Metrics, [
            ['queued', ::Ice::T_int, false, 0],
            ['outstanding', ::Ice::T_int, false, 0],
            ['delivered', ::Ice::T_long, false, 0]
        ])
    end
end
