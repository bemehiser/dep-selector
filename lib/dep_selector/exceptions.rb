module DepSelector
  module Exceptions

    # TODO [cw,2010/11/23]: add some way to indicate most constrained
    # variables
    class NoSolutionExists < StandardError
      attr_reader :message, :unsatisfiable_constraint
      def initialize(message, unsatisfiable_constraint=nil)
        @message = message
        @unsatisfiable_constraint = unsatisfiable_constraint
      end
    end

    class InvalidSolutionConstraint < ArgumentError ; end
    class InvalidPackage < ArgumentError ; end
    class InvalidVersion < ArgumentError ; end
    class InvalidVersionConstraint < ArgumentError; end

  end
end
