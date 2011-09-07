module Hippo
  module Exceptions
    class Exception < StandardError; end
    class InvalidField < Exception; end
  end
end
