# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

require "../utils"
require "../core/*"

# Required modules for this namespace
require "./messages"

module Proton::TL
  module Types
    module Stats
      abstract class TypeBroadcastStats < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xBDF78394
            BroadcastStats.tl_deserialize(io, bare)
          when 0xAB42441A
            GetBroadcastStats.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeMegagroupStats < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xEF7FF916
            MegagroupStats.tl_deserialize(io, bare)
          when 0xDCDF8607
            GetMegagroupStats.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeMessageStats < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x8999F295
            MessageStats.tl_deserialize(io, bare)
          when 0xB6E0A3F5
            GetMessageStats.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeStatsGraph < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x621D5FA0
            LoadAsyncGraph.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeMessages < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x5630281B
            GetMessagePublicForwards.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class BroadcastStats < TypeBroadcastStats
        CONSTRUCTOR_ID = 0xBDF78394

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @period.tl_serialize(io, false)
          @followers.tl_serialize(io, false)
          @views_per_post.tl_serialize(io, false)
          @shares_per_post.tl_serialize(io, false)
          @enabled_notifications.tl_serialize(io, false)
          @growth_graph.tl_serialize(io, false)
          @followers_graph.tl_serialize(io, false)
          @mute_graph.tl_serialize(io, false)
          @top_hours_graph.tl_serialize(io, false)
          @interactions_graph.tl_serialize(io, false)
          @iv_interactions_graph.tl_serialize(io, false)
          @views_by_source_graph.tl_serialize(io, false)
          @new_followers_by_source_graph.tl_serialize(io, false)
          @languages_graph.tl_serialize(io, false)
          @recent_message_interactions.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            period = Root::TypeStatsDateRangeDays.tl_deserialize(io, false),
            followers = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            views_per_post = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            shares_per_post = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            enabled_notifications = Root::TypeStatsPercentValue.tl_deserialize(io, false),
            growth_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            followers_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            mute_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            top_hours_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            interactions_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            iv_interactions_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            views_by_source_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            new_followers_by_source_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            languages_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            recent_message_interactions = Array(Root::TypeMessageInteractionCounters).tl_deserialize(io, false),
          )
        end
      end

      class MegagroupStats < TypeMegagroupStats
        CONSTRUCTOR_ID = 0xEF7FF916

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @period.tl_serialize(io, false)
          @members.tl_serialize(io, false)
          @messages.tl_serialize(io, false)
          @viewers.tl_serialize(io, false)
          @posters.tl_serialize(io, false)
          @growth_graph.tl_serialize(io, false)
          @members_graph.tl_serialize(io, false)
          @new_members_by_source_graph.tl_serialize(io, false)
          @languages_graph.tl_serialize(io, false)
          @messages_graph.tl_serialize(io, false)
          @actions_graph.tl_serialize(io, false)
          @top_hours_graph.tl_serialize(io, false)
          @weekdays_graph.tl_serialize(io, false)
          @top_posters.tl_serialize(io, false)
          @top_admins.tl_serialize(io, false)
          @top_inviters.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            period = Root::TypeStatsDateRangeDays.tl_deserialize(io, false),
            members = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            messages = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            viewers = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            posters = Root::TypeStatsAbsValueAndPrev.tl_deserialize(io, false),
            growth_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            members_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            new_members_by_source_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            languages_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            messages_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            actions_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            top_hours_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            weekdays_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
            top_posters = Array(Root::TypeStatsGroupTopPoster).tl_deserialize(io, false),
            top_admins = Array(Root::TypeStatsGroupTopAdmin).tl_deserialize(io, false),
            top_inviters = Array(Root::TypeStatsGroupTopInviter).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class MessageStats < TypeMessageStats
        CONSTRUCTOR_ID = 0x8999F295

        getter views_graph : Root::TypeStatsGraph

        def initialize(
          views_graph : Root::TypeStatsGraph
        )
          @views_graph = views_graph
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @views_graph.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            views_graph = Root::TypeStatsGraph.tl_deserialize(io, false),
          )
        end
      end

      class GetBroadcastStats < TLRequest
        CONSTRUCTOR_ID = 0xAB42441A

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!dark.nil? ? 1 : 0)
          ).tl_serialize(io)
          @channel.tl_serialize(io, false)
        end

        def return_type
          Stats::TypeBroadcastStats
        end
      end

      class LoadAsyncGraph < TLRequest
        CONSTRUCTOR_ID = 0x621D5FA0

        getter token : Bytes
        getter x : Int64 | Nil

        def initialize(
          token : Bytes | String | IO,
          x : Int64 | Nil = nil
        )
          @token = token
          @x = x
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!x.nil? ? 1 : 0)
          ).tl_serialize(io)
          @token.tl_serialize(io, true)
          @x.tl_serialize(io, true) unless @x.nil?
        end

        def return_type
          Root::TypeStatsGraph
        end
      end

      class GetMegagroupStats < TLRequest
        CONSTRUCTOR_ID = 0xDCDF8607

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!dark.nil? ? 1 : 0)
          ).tl_serialize(io)
          @channel.tl_serialize(io, false)
        end

        def return_type
          Stats::TypeMegagroupStats
        end
      end

      class GetMessagePublicForwards < TLRequest
        CONSTRUCTOR_ID = 0x5630281B

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
          @msg_id = msg_id
          @offset_rate = offset_rate
          @offset_peer = offset_peer
          @offset_id = offset_id
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @channel.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @offset_rate.tl_serialize(io, true)
          @offset_peer.tl_serialize(io, false)
          @offset_id.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class GetMessageStats < TLRequest
        CONSTRUCTOR_ID = 0xB6E0A3F5

        getter channel : Root::TypeInputChannel
        getter msg_id : Int32
        getter dark : Bool | Nil

        def initialize(
          channel : Root::TypeInputChannel,
          msg_id : Int32,
          dark : Bool | Nil = nil
        )
          @channel = channel
          @msg_id = msg_id
          @dark = dark
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!dark.nil? ? 1 : 0)
          ).tl_serialize(io)
          @channel.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
        end

        def return_type
          Stats::TypeMessageStats
        end
      end
    end
  end
end
