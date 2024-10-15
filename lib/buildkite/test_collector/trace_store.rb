module Buildkite::TestCollector
  class TraceStore
    def initialize
      @traces = {}
    end

    def add(id, trace)
      @traces[id] = trace
    end

    def get(id)
      @traces[id]
    end

    def has_key?(id)
      @traces.key?(id)
    end

    def values_at(*ids)
      @traces.values_at(*ids)
    end

    def values
      @traces.values
    end
  end
end