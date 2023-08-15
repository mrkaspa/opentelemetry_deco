defmodule OpentelemetryDecoTest do
  use ExUnit.Case
  doctest OpentelemetryDeco

  defmodule Example do
    use OpentelemetryDeco

    @decorate trace("trace_sample")
    def call do
      # your code here
    end
  end
end
