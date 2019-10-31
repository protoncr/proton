# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains approximate storage usage statistics, excluding files of unknown file type.
  # files_size [::Int64] Approximate total size of files.
  # file_count [::Int32] Approximate number of files.
  # database_size [::Int64] Size of the database.
  # language_pack_database_size [::Int64] Size of the language pack database.
  # log_size [::Int64] Size of the TDLib internal log.
  class StorageStatisticsFast < Types::Base
    property files_size : ::Int64
    property file_count : ::Int32
    property database_size : ::Int64
    property language_pack_database_size : ::Int64
    property log_size : ::Int64

    def initialize(@files_size : ::Int64, @file_count : ::Int32, @database_size : ::Int64, @language_pack_database_size : ::Int64, @log_size : ::Int64)
    end
  end
end

