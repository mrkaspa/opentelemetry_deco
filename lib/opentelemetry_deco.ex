defmodule OpentelemetryDeco do
  use Decorator.Define, trace: 1

  def trace(trace_name, body, _context) do
    quote do
      require OpenTelemetry.Tracer, as: Tracer

      Tracer.with_span unquote(trace_name) do
        unquote(body)
      end
    end
  end
end
