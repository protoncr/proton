# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the result of an ImportContacts request.
  # user_ids [::Array(::Int32)] User identifiers of the imported contacts in the same order as they were specified in
  #   the request; 0 if the contact is not yet a registered user.
  # importer_count [::Array(::Int32)] The number of users that imported the corresponding contact; 0 for already
  #   registered users or if unavailable.
  class ImportedContacts < Types::Base
    property user_ids : ::Array(::Int32)
    property importer_count : ::Array(::Int32)

    def initialize(@user_ids : ::Array(::Int32), @importer_count : ::Array(::Int32))
    end
  end
end

