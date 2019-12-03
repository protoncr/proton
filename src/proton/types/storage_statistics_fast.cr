# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains approximate storage usage statistics, excluding files of unknown file type.
  class StorageStatisticsFast < Types::Base
    include JSON::Serializable

    # Approximate total size of files
    property files_size : ::Int64

    # Approximate number of files
    property file_count : ::Int32

    # Size of the database
    property database_size : ::Int64

    # Size of the language pack database
    property language_pack_database_size : ::Int64

    # Size of the TDLib internal log
    property log_size : ::Int64

    def initialize(@files_size : ::Int64, @file_count : ::Int32, @database_size : ::Int64, @language_pack_database_size : ::Int64, @log_size : ::Int64)
    end
  end
end
