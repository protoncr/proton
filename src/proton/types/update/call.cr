# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # New call was created or information about a call was updated.
  # call [Proton::Types::Call] New data about a call.
  class Update::Call < Types::Update
    property call : Proton::Types::Call

    def initialize(@call : Proton::Types::Call)
    end
  end
end

