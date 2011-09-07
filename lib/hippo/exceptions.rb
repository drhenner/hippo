module Hippo
  module Exceptions
    class Exception < StandardError; end

    class InvalidField    < Exception; end
    class InvalidSegment  < Exception; end
  end
end
