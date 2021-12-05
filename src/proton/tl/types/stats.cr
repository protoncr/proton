# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

# Required modules for this namespace
require "./messages"

module Proton::TL
  module Stats
    abstract class TypeBroadcastStats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBDF78394
          BroadcastStats.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeMegagroupStats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEF7FF916
          MegagroupStats.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeMessageStats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8999F295
          MessageStats.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeStatsGraph < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class BroadcastStats < TypeBroadcastStats
      getter constructor_id : UInt32 = 0xBDF78394_u32
      class_getter constructor_id : UInt32 = 0xBDF78394_u32

      getter period : Root::TypeStatsDateRangeDays
      getter followers : Root::TypeStatsAbsValueAndPrev
      getter views_per_post : Root::TypeStatsAbsValueAndPrev
      getter shares_per_post : Root::TypeStatsAbsValueAndPrev
      getter enabled_notifications : Root::TypeStatsPercentValue
      getter growth_graph : Root::TypeStatsGraph
      getter followers_graph : Root::TypeStatsGraph
      getter mute_graph : Root::TypeStatsGraph
      getter top_hours_graph : Root::TypeStatsGraph
      getter interactions_graph : Root::TypeStatsGraph
      getter iv_interactions_graph : Root::TypeStatsGraph
      getter views_by_source_graph : Root::TypeStatsGraph
      getter new_followers_by_source_graph : Root::TypeStatsGraph
      getter languages_graph : Root::TypeStatsGraph
      getter recent_message_interactions : Array(Root::TypeMessageInteractionCounters)

      def initialize(
        period : Root::TypeStatsDateRangeDays,
        followers : Root::TypeStatsAbsValueAndPrev,
        views_per_post : Root::TypeStatsAbsValueAndPrev,
        shares_per_post : Root::TypeStatsAbsValueAndPrev,
        enabled_notifications : Root::TypeStatsPercentValue,
        growth_graph : Root::TypeStatsGraph,
        followers_graph : Root::TypeStatsGraph,
        mute_graph : Root::TypeStatsGraph,
        top_hours_graph : Root::TypeStatsGraph,
        interactions_graph : Root::TypeStatsGraph,
        iv_interactions_graph : Root::TypeStatsGraph,
        views_by_source_graph : Root::TypeStatsGraph,
        new_followers_by_source_graph : Root::TypeStatsGraph,
        languages_graph : Root::TypeStatsGraph,
        recent_message_interactions : Array(Root::TypeMessageInteractionCounters)
      )
        @period = period
        @followers = followers
        @views_per_post = views_per_post
        @shares_per_post = shares_per_post
        @enabled_notifications = enabled_notifications
        @growth_graph = growth_graph
        @followers_graph = followers_graph
        @mute_graph = mute_graph
        @top_hours_graph = top_hours_graph
        @interactions_graph = interactions_graph
        @iv_interactions_graph = iv_interactions_graph
        @views_by_source_graph = views_by_source_graph
        @new_followers_by_source_graph = new_followers_by_source_graph
        @languages_graph = languages_graph
        @recent_message_interactions = recent_message_interactions
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @period.tl_serialize(io)
        @followers.tl_serialize(io)
        @views_per_post.tl_serialize(io)
        @shares_per_post.tl_serialize(io)
        @enabled_notifications.tl_serialize(io)
        @growth_graph.tl_serialize(io)
        @followers_graph.tl_serialize(io)
        @mute_graph.tl_serialize(io)
        @top_hours_graph.tl_serialize(io)
        @interactions_graph.tl_serialize(io)
        @iv_interactions_graph.tl_serialize(io)
        @views_by_source_graph.tl_serialize(io)
        @new_followers_by_source_graph.tl_serialize(io)
        @languages_graph.tl_serialize(io)
        @recent_message_interactions.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          period: Root::TypeStatsDateRangeDays.tl_deserialize(io),
          followers: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          views_per_post: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          shares_per_post: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          enabled_notifications: Root::TypeStatsPercentValue.tl_deserialize(io),
          growth_graph: Root::TypeStatsGraph.tl_deserialize(io),
          followers_graph: Root::TypeStatsGraph.tl_deserialize(io),
          mute_graph: Root::TypeStatsGraph.tl_deserialize(io),
          top_hours_graph: Root::TypeStatsGraph.tl_deserialize(io),
          interactions_graph: Root::TypeStatsGraph.tl_deserialize(io),
          iv_interactions_graph: Root::TypeStatsGraph.tl_deserialize(io),
          views_by_source_graph: Root::TypeStatsGraph.tl_deserialize(io),
          new_followers_by_source_graph: Root::TypeStatsGraph.tl_deserialize(io),
          languages_graph: Root::TypeStatsGraph.tl_deserialize(io),
          recent_message_interactions: Array(Root::TypeMessageInteractionCounters).tl_deserialize(io),
        )
      end
    end

    class MegagroupStats < TypeMegagroupStats
      getter constructor_id : UInt32 = 0xEF7FF916_u32
      class_getter constructor_id : UInt32 = 0xEF7FF916_u32

      getter period : Root::TypeStatsDateRangeDays
      getter members : Root::TypeStatsAbsValueAndPrev
      getter messages : Root::TypeStatsAbsValueAndPrev
      getter viewers : Root::TypeStatsAbsValueAndPrev
      getter posters : Root::TypeStatsAbsValueAndPrev
      getter growth_graph : Root::TypeStatsGraph
      getter members_graph : Root::TypeStatsGraph
      getter new_members_by_source_graph : Root::TypeStatsGraph
      getter languages_graph : Root::TypeStatsGraph
      getter messages_graph : Root::TypeStatsGraph
      getter actions_graph : Root::TypeStatsGraph
      getter top_hours_graph : Root::TypeStatsGraph
      getter weekdays_graph : Root::TypeStatsGraph
      getter top_posters : Array(Root::TypeStatsGroupTopPoster)
      getter top_admins : Array(Root::TypeStatsGroupTopAdmin)
      getter top_inviters : Array(Root::TypeStatsGroupTopInviter)
      getter users : Array(Root::TypeUser)

      def initialize(
        period : Root::TypeStatsDateRangeDays,
        members : Root::TypeStatsAbsValueAndPrev,
        messages : Root::TypeStatsAbsValueAndPrev,
        viewers : Root::TypeStatsAbsValueAndPrev,
        posters : Root::TypeStatsAbsValueAndPrev,
        growth_graph : Root::TypeStatsGraph,
        members_graph : Root::TypeStatsGraph,
        new_members_by_source_graph : Root::TypeStatsGraph,
        languages_graph : Root::TypeStatsGraph,
        messages_graph : Root::TypeStatsGraph,
        actions_graph : Root::TypeStatsGraph,
        top_hours_graph : Root::TypeStatsGraph,
        weekdays_graph : Root::TypeStatsGraph,
        top_posters : Array(Root::TypeStatsGroupTopPoster),
        top_admins : Array(Root::TypeStatsGroupTopAdmin),
        top_inviters : Array(Root::TypeStatsGroupTopInviter),
        users : Array(Root::TypeUser)
      )
        @period = period
        @members = members
        @messages = messages
        @viewers = viewers
        @posters = posters
        @growth_graph = growth_graph
        @members_graph = members_graph
        @new_members_by_source_graph = new_members_by_source_graph
        @languages_graph = languages_graph
        @messages_graph = messages_graph
        @actions_graph = actions_graph
        @top_hours_graph = top_hours_graph
        @weekdays_graph = weekdays_graph
        @top_posters = top_posters
        @top_admins = top_admins
        @top_inviters = top_inviters
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @period.tl_serialize(io)
        @members.tl_serialize(io)
        @messages.tl_serialize(io)
        @viewers.tl_serialize(io)
        @posters.tl_serialize(io)
        @growth_graph.tl_serialize(io)
        @members_graph.tl_serialize(io)
        @new_members_by_source_graph.tl_serialize(io)
        @languages_graph.tl_serialize(io)
        @messages_graph.tl_serialize(io)
        @actions_graph.tl_serialize(io)
        @top_hours_graph.tl_serialize(io)
        @weekdays_graph.tl_serialize(io)
        @top_posters.tl_serialize(io)
        @top_admins.tl_serialize(io)
        @top_inviters.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          period: Root::TypeStatsDateRangeDays.tl_deserialize(io),
          members: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          messages: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          viewers: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          posters: Root::TypeStatsAbsValueAndPrev.tl_deserialize(io),
          growth_graph: Root::TypeStatsGraph.tl_deserialize(io),
          members_graph: Root::TypeStatsGraph.tl_deserialize(io),
          new_members_by_source_graph: Root::TypeStatsGraph.tl_deserialize(io),
          languages_graph: Root::TypeStatsGraph.tl_deserialize(io),
          messages_graph: Root::TypeStatsGraph.tl_deserialize(io),
          actions_graph: Root::TypeStatsGraph.tl_deserialize(io),
          top_hours_graph: Root::TypeStatsGraph.tl_deserialize(io),
          weekdays_graph: Root::TypeStatsGraph.tl_deserialize(io),
          top_posters: Array(Root::TypeStatsGroupTopPoster).tl_deserialize(io),
          top_admins: Array(Root::TypeStatsGroupTopAdmin).tl_deserialize(io),
          top_inviters: Array(Root::TypeStatsGroupTopInviter).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class MessageStats < TypeMessageStats
      getter constructor_id : UInt32 = 0x8999F295_u32
      class_getter constructor_id : UInt32 = 0x8999F295_u32

      getter views_graph : Root::TypeStatsGraph

      def initialize(
        views_graph : Root::TypeStatsGraph
      )
        @views_graph = views_graph
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @views_graph.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          views_graph: Root::TypeStatsGraph.tl_deserialize(io),
        )
      end
    end

    class GetBroadcastStats < TLRequest
      getter constructor_id : UInt32 = 0xAB42441A_u32
      class_getter constructor_id : UInt32 = 0xAB42441A_u32

      getter channel : Root::TypeInputChannel
      getter dark : Bool | Nil

      def initialize(
        channel : Root::TypeInputChannel,
        dark : Bool | Nil = nil
      )
        @channel = channel
        @dark = dark
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!dark.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Stats::TypeBroadcastStats
      end
    end

    class LoadAsyncGraph < TLRequest
      getter constructor_id : UInt32 = 0x621D5FA0_u32
      class_getter constructor_id : UInt32 = 0x621D5FA0_u32

      getter token : Bytes
      getter x : Int64 | Nil

      def initialize(
        token : Bytes | String | IO,
        x : Int64 | Nil = nil
      )
        @token = Utils.parse_bytes!(token)
        @x = x
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!x.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @token.tl_serialize(io)
        @x.tl_serialize(io) unless @x.nil?
      end

      def self.return_type : Deserializable
        Root::TypeStatsGraph
      end
    end

    class GetMegagroupStats < TLRequest
      getter constructor_id : UInt32 = 0xDCDF8607_u32
      class_getter constructor_id : UInt32 = 0xDCDF8607_u32

      getter channel : Root::TypeInputChannel
      getter dark : Bool | Nil

      def initialize(
        channel : Root::TypeInputChannel,
        dark : Bool | Nil = nil
      )
        @channel = channel
        @dark = dark
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!dark.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Stats::TypeMegagroupStats
      end
    end

    class GetMessagePublicForwards < TLRequest
      getter constructor_id : UInt32 = 0x5630281B_u32
      class_getter constructor_id : UInt32 = 0x5630281B_u32

      getter channel : Root::TypeInputChannel
      getter msg_id : Int32
      getter offset_rate : Int32
      getter offset_peer : Root::TypeInputPeer
      getter offset_id : Int32
      getter limit : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        msg_id : Int32,
        offset_rate : Int32,
        offset_peer : Root::TypeInputPeer,
        offset_id : Int32,
        limit : Int32
      )
        @channel = channel
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @offset_rate = TL::Utils.parse_int!(offset_rate, Int32)
        @offset_peer = offset_peer
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @offset_rate.tl_serialize(io)
        @offset_peer.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class GetMessageStats < TLRequest
      getter constructor_id : UInt32 = 0xB6E0A3F5_u32
      class_getter constructor_id : UInt32 = 0xB6E0A3F5_u32

      getter channel : Root::TypeInputChannel
      getter msg_id : Int32
      getter dark : Bool | Nil

      def initialize(
        channel : Root::TypeInputChannel,
        msg_id : Int32,
        dark : Bool | Nil = nil
      )
        @channel = channel
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @dark = dark
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!dark.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io)
        @msg_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Stats::TypeMessageStats
      end
    end
  end
end
