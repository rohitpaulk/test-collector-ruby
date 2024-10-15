# frozen_string_literal: true

require "minitest"

require_relative "../minitest_plugin"

Buildkite::TestCollector.trace_store = Buildkite::TestCollector::TraceStore.new
Buildkite::TestCollector.uploader = Buildkite::TestCollector::Uploader

class Minitest::Test
  include Buildkite::TestCollector::MinitestPlugin
end

Buildkite::TestCollector.enable_tracing!

Buildkite::TestCollector.session = Buildkite::TestCollector::Session.new
