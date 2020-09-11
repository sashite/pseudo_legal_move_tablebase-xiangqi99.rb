# frozen_string_literal: true

require "simplecov"

::SimpleCov.command_name "Brutal test suite"
::SimpleCov.start

require "./lib/pseudo_legal_move_tablebase/xiangqi99"

# ------------------------------------------------------------------------------

actual = begin
  PseudoLegalMoveTablebase::XIANGQI99
end

raise if actual.keys != ["X:-K", "X:A", "X:C", "X:E", "X:H", "X:R", "X:S", "x:-k", "x:a", "x:c", "x:e", "x:h", "x:r", "x:s"]
