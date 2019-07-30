# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/typhoeus/all/typhoeus.rbi
#
# typhoeus-1.3.0
module Typhoeus
  def self.before(&block); end
  def self.configure; end
  def self.stub(base_url, options = nil, &block); end
  def self.with_connection; end
  extend Typhoeus::Request::Actions
  extend Typhoeus::Request::Callbacks::Types
end
module Typhoeus::Config
  def block_connection; end
  def block_connection=(arg0); end
  def cache; end
  def cache=(arg0); end
  def memoize; end
  def memoize=(arg0); end
  def proxy; end
  def proxy=(arg0); end
  def user_agent; end
  def user_agent=(arg0); end
  def verbose; end
  def verbose=(arg0); end
  extend Typhoeus::Config
end
class Typhoeus::EasyFactory
  def easy; end
  def get; end
  def hydra; end
  def initialize(request, hydra = nil); end
  def provide_help(option); end
  def request; end
  def sanitize(options); end
  def sanitize_timeout!(options, timeout); end
  def set_callback; end
end
module Typhoeus::Errors
end
class Typhoeus::Errors::TyphoeusError < StandardError
end
class Typhoeus::Errors::NoStub < Typhoeus::Errors::TyphoeusError
  def initialize(request); end
end
class Typhoeus::Expectation
  def and_return(response = nil, &block); end
  def base_url; end
  def from; end
  def initialize(base_url, options = nil); end
  def matches?(request); end
  def options; end
  def options_match?(request); end
  def response(request); end
  def responses; end
  def self.all; end
  def self.clear; end
  def self.find_by(request); end
  def self.response_for(request); end
  def stubbed_from(value); end
  def url_match?(request_url); end
end
class Typhoeus::Hydra
  def initialize(options = nil); end
  def max_concurrency; end
  def max_concurrency=(arg0); end
  def multi; end
  def self.hydra; end
  include Typhoeus::Hydra::Addable
  include Typhoeus::Hydra::Before
  include Typhoeus::Hydra::BlockConnection
  include Typhoeus::Hydra::Cacheable
  include Typhoeus::Hydra::Memoizable
  include Typhoeus::Hydra::Queueable
  include Typhoeus::Hydra::Runnable
  include Typhoeus::Hydra::Stubbable
end
module Typhoeus::Hydra::Addable
  def add(request); end
end
module Typhoeus::Hydra::Before
  def add(request); end
end
module Typhoeus::Hydra::Cacheable
  def add(request); end
end
module Typhoeus::Hydra::BlockConnection
  def add(request); end
end
module Typhoeus::Hydra::Memoizable
  def add(request); end
  def memory; end
  def run; end
end
module Typhoeus::Hydra::Queueable
  def abort; end
  def dequeue; end
  def dequeue_many; end
  def queue(request); end
  def queue_front(request); end
  def queued_requests; end
end
module Typhoeus::Hydra::Runnable
  def run; end
end
module Typhoeus::Hydra::Stubbable
  def add(request); end
end
module Typhoeus::Pool
  def self.clear; end
  def self.easies; end
  def self.get; end
  def self.release(easy); end
  def self.with_easy(&block); end
end
class Typhoeus::Request
  def base_url; end
  def base_url=(arg0); end
  def block_connection; end
  def block_connection=(arg0); end
  def cache_key; end
  def encoded_body; end
  def eql?(other); end
  def fuzzy_hash_eql?(left, right); end
  def hash; end
  def hashable_string_for(obj); end
  def hydra; end
  def hydra=(arg0); end
  def initialize(base_url, options = nil); end
  def options; end
  def options=(arg0); end
  def original_options; end
  def original_options=(arg0); end
  def set_defaults; end
  def url; end
  extend Typhoeus::Request::Actions
  include Typhoeus::Request::Before
  include Typhoeus::Request::BlockConnection
  include Typhoeus::Request::Cacheable
  include Typhoeus::Request::Callbacks
  include Typhoeus::Request::Callbacks::Types
  include Typhoeus::Request::Marshal
  include Typhoeus::Request::Memoizable
  include Typhoeus::Request::Operations
  include Typhoeus::Request::Responseable
  include Typhoeus::Request::Streamable
  include Typhoeus::Request::Stubbable
end
module Typhoeus::Request::Actions
  def delete(base_url, options = nil); end
  def get(base_url, options = nil); end
  def head(base_url, options = nil); end
  def options(base_url, options = nil); end
  def patch(base_url, options = nil); end
  def post(base_url, options = nil); end
  def put(base_url, options = nil); end
end
module Typhoeus::Request::Before
  def run; end
end
module Typhoeus::Request::BlockConnection
  def blocked?; end
  def run; end
end
module Typhoeus::Request::Cacheable
  def cache_ttl; end
  def cacheable?; end
  def response=(response); end
  def run; end
end
module Typhoeus::Request::Callbacks
  def execute_callbacks; end
  def execute_headers_callbacks(response); end
end
module Typhoeus::Request::Callbacks::Types
  def on_complete(&block); end
  def on_failure(&block); end
  def on_headers(&block); end
  def on_success(&block); end
end
module Typhoeus::Request::Marshal
  def marshal_dump; end
  def marshal_load(attributes); end
end
module Typhoeus::Request::Memoizable
  def memoizable?; end
  def response=(response); end
end
module Typhoeus::Request::Operations
  def finish(response, bypass_memoization = nil); end
  def run; end
end
module Typhoeus::Request::Responseable
  def response; end
  def response=(value); end
end
module Typhoeus::Request::Streamable
  def on_body(&block); end
  def streaming?; end
end
module Typhoeus::Request::Stubbable
  def run; end
end
class Typhoeus::Response
  def handled_response; end
  def handled_response=(arg0); end
  def initialize(options = nil); end
  def mock; end
  def mock=(arg0); end
  def mock?; end
  def options; end
  def options=(arg0); end
  def request; end
  def request=(arg0); end
  include Typhoeus::Response::Cacheable
  include Typhoeus::Response::Informations
  include Typhoeus::Response::Status
end
class Typhoeus::Response::Header < Anonymous_Delegator_32
  def [](key); end
  def initialize(raw); end
  def parse; end
  def process_line(header); end
  def process_pair(key, value); end
  def raw; end
  def set_default_proc_on(hash, default_proc); end
  def set_value(key, value, hash); end
end
module Typhoeus::Response::Informations
  def app_connect_time; end
  def appconnect_time; end
  def body; end
  def code; end
  def connect_time; end
  def debug_info; end
  def effective_url; end
  def headers; end
  def headers_hash; end
  def httpauth_avail; end
  def name_lookup_time; end
  def namelookup_time; end
  def pretransfer_time; end
  def primary_ip; end
  def redirect_count; end
  def redirect_time; end
  def redirections; end
  def request_size; end
  def response_body; end
  def response_code; end
  def response_headers; end
  def return_code; end
  def return_message; end
  def start_transfer_time; end
  def starttransfer_time; end
  def time; end
  def total_time; end
end
module Typhoeus::Response::Status
  def failure?; end
  def first_header_line; end
  def has_bad_response_code?; end
  def has_good_response_code?; end
  def http_version; end
  def modified?; end
  def status_message; end
  def success?; end
  def timed_out?; end
end
module Typhoeus::Response::Cacheable
  def cached=(arg0); end
  def cached?; end
end
module Rack
end
module Rack::Typhoeus
end
module Rack::Typhoeus::Middleware
end
class Rack::Typhoeus::Middleware::ParamsDecoder
  def call(env); end
  def initialize(app); end
  def update_params(req, k, v); end
  include Rack::Typhoeus::Middleware::ParamsDecoder::Helper
end
module Rack::Typhoeus::Middleware::ParamsDecoder::Helper
  def convert(hash); end
  def decode!(hash); end
  def decode(hash); end
  def decode_typhoeus_arrays; end
  def encoded?(hash); end
end
module Typhoeus::Cache
end
class Typhoeus::Cache::Rails
  def get(request); end
  def initialize(cache = nil, options = nil); end
  def set(request, response); end
end
