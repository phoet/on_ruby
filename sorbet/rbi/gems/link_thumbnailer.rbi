# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/link_thumbnailer/all/link_thumbnailer.rbi
#
# link_thumbnailer-3.3.2
module LinkThumbnailer
  def self.config; end
  def self.configure; end
  def self.generate(url, options = nil); end
  def self.page; end
end
class LinkThumbnailer::Configuration
  def attributes; end
  def attributes=(arg0); end
  def blacklist_urls; end
  def blacklist_urls=(arg0); end
  def description_min_length; end
  def description_min_length=(arg0); end
  def encoding; end
  def encoding=(arg0); end
  def graders; end
  def graders=(arg0); end
  def http_open_timeout; end
  def http_open_timeout=(arg0); end
  def http_override_headers; end
  def http_override_headers=(arg0); end
  def http_read_timeout; end
  def http_read_timeout=(arg0); end
  def http_timeout; end
  def http_timeout=(arg0); end
  def image_limit; end
  def image_limit=(arg0); end
  def image_stats; end
  def image_stats=(arg0); end
  def initialize; end
  def max_concurrency; end
  def max_concurrency=(arg0); end
  def negative_regex; end
  def negative_regex=(arg0); end
  def positive_regex; end
  def positive_regex=(arg0); end
  def raise_on_invalid_format; end
  def raise_on_invalid_format=(arg0); end
  def redirect_limit; end
  def redirect_limit=(arg0); end
  def scrapers; end
  def scrapers=(arg0); end
  def user_agent; end
  def user_agent=(arg0); end
  def verify_ssl; end
  def verify_ssl=(arg0); end
end
class LinkThumbnailer::Exceptions < StandardError
end
class LinkThumbnailer::RedirectLimit < LinkThumbnailer::Exceptions
end
class LinkThumbnailer::BadUriFormat < LinkThumbnailer::Exceptions
end
class LinkThumbnailer::FormatNotSupported < LinkThumbnailer::Exceptions
end
class LinkThumbnailer::ScraperInvalid < LinkThumbnailer::Exceptions
end
class LinkThumbnailer::HTTPError < LinkThumbnailer::Exceptions
end
class LinkThumbnailer::SyntaxError < LinkThumbnailer::Exceptions
end
class LinkThumbnailer::Response
  def body; end
  def charset; end
  def convert_encoding_to_utf8(body, from); end
  def extract_body; end
  def extract_charset; end
  def initialize(response); end
  def should_convert_body_to_utf8?; end
end
class LinkThumbnailer::Processor < SimpleDelegator
  def build_absolute_url_for(relative_url); end
  def call(url = nil, redirect_count = nil, headers = nil); end
  def config; end
  def http; end
  def http_open_timeout; end
  def http_read_timeout; end
  def initialize; end
  def perform_request; end
  def redirect_count; end
  def redirect_limit; end
  def resolve_relative_url(location); end
  def set_http_headers(headers = nil); end
  def set_http_options; end
  def ssl_required?; end
  def too_many_redirections?; end
  def url; end
  def url=(url); end
  def user_agent; end
  def valid_response_format?(response); end
  def valid_url_format?; end
  def with_valid_url; end
end
class LinkThumbnailer::Parser
  def call(source); end
end
class LinkThumbnailer::Model
  def sanitize(str); end
  def to_json(*args); end
end
module LinkThumbnailer::Models
end
class LinkThumbnailer::Models::Website < LinkThumbnailer::Model
  def as_json(*arg0); end
  def description; end
  def description=(arg0); end
  def favicon; end
  def favicon=(arg0); end
  def image=(image); end
  def images; end
  def images=(images); end
  def initialize; end
  def title; end
  def title=(arg0); end
  def url; end
  def url=(arg0); end
  def video=(video); end
  def videos; end
  def videos=(videos); end
end
class LinkThumbnailer::Models::Title < LinkThumbnailer::Model
  def initialize(node, text = nil); end
  def node; end
  def text; end
  def to_s; end
end
module LinkThumbnailer::Graders
end
class LinkThumbnailer::Graders::Base < SimpleDelegator
  def call; end
  def config; end
  def description; end
  def initialize(description, options = nil); end
  def node; end
  def options; end
  def text; end
  def weight; end
end
class LinkThumbnailer::Graders::Length < LinkThumbnailer::Graders::Base
  def call; end
  def get_gaussian_value_for(x); end
  def ideal_description_length; end
  def too_short?; end
  def x; end
  def y; end
end
class LinkThumbnailer::Graders::HtmlAttribute < LinkThumbnailer::Graders::Base
  def attribute; end
  def attribute?; end
  def attribute_name; end
  def call; end
  def initialize(description, attribute_name); end
  def negative?; end
  def negative_regex; end
  def positive?; end
  def positive_regex; end
end
class LinkThumbnailer::Graders::LinkDensity < LinkThumbnailer::Graders::Base
  def call; end
  def links; end
end
class LinkThumbnailer::Graders::Position < LinkThumbnailer::Graders::Base
  def call; end
end
class LinkThumbnailer::Grader < SimpleDelegator
  def call; end
  def config; end
  def description; end
  def graders; end
  def initialize(description); end
end
class LinkThumbnailer::Models::Description < LinkThumbnailer::Model
  def <=>(other); end
  def candidates_number; end
  def compute_probability; end
  def initialize(node, text, position = nil, candidates_number = nil); end
  def node; end
  def position; end
  def probability; end
  def probability=(arg0); end
  def text; end
  def to_s; end
end
class LinkThumbnailer::ImageParser
  def build_default_image(uri); end
  def default_images(urls); end
  def image_info(urls); end
  def images; end
  def initialize(urls); end
  def max_concurrency; end
  def perform?; end
  def size; end
  def type; end
end
class LinkThumbnailer::ImageParser::NullImage
  def initialize(uri); end
  def size; end
  def type; end
  def uri; end
end
module LinkThumbnailer::ImageComparators
end
class LinkThumbnailer::ImageComparators::Base
  def call; end
  def image; end
  def initialize(image); end
end
class LinkThumbnailer::ImageComparators::Size < LinkThumbnailer::ImageComparators::Base
  def call(other); end
end
class LinkThumbnailer::ImageComparator
  def call(other); end
  def image; end
  def initialize(image); end
  def size_comparator; end
end
class LinkThumbnailer::ImageValidator < SimpleDelegator
  def blacklist_urls; end
  def call; end
  def config; end
  def image; end
  def initialize(image); end
end
class LinkThumbnailer::Models::Image < LinkThumbnailer::Model
  def <=>(other); end
  def as_json(*arg0); end
  def comparator; end
  def initialize(src, size = nil, type = nil); end
  def parser; end
  def size; end
  def src; end
  def to_s; end
  def type; end
  def valid?; end
  def validator; end
end
class LinkThumbnailer::VideoParser
  def duration; end
  def embed_code; end
  def id; end
  def initialize(video); end
  def parser; end
  def provider; end
  def size; end
end
class LinkThumbnailer::Models::Video < LinkThumbnailer::Model
  def as_json(*arg0); end
  def duration; end
  def embed_code; end
  def id; end
  def initialize(src, size = nil); end
  def parser; end
  def provider; end
  def size; end
  def src; end
  def to_s; end
end
module LinkThumbnailer::Scrapers
end
class LinkThumbnailer::Scrapers::Base < SimpleDelegator
  def abc; end
  def applicable?; end
  def attribute_name; end
  def call(attribute_name); end
  def config; end
  def document; end
  def initialize(document, website = nil); end
  def meta_xpath(options = nil); end
  def meta_xpaths(options = nil); end
  def model_class; end
  def modelize(node, text = nil); end
  def value; end
  def website; end
end
module LinkThumbnailer::Scrapers::Default
end
class LinkThumbnailer::Scrapers::Default::Base < LinkThumbnailer::Scrapers::Base
end
class LinkThumbnailer::Scrapers::Default::Title < LinkThumbnailer::Scrapers::Default::Base
  def model; end
  def node; end
  def value; end
end
module LinkThumbnailer::Scrapers::Opengraph
end
class LinkThumbnailer::Scrapers::Opengraph::Base < LinkThumbnailer::Scrapers::Base
  def applicable?; end
  def attribute; end
  def meta; end
  def model; end
  def node; end
  def opengraph_node?(node); end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Title < LinkThumbnailer::Scrapers::Opengraph::Base
end
class LinkThumbnailer::Scrapers::Default::Description < LinkThumbnailer::Scrapers::Default::Base
  def candidates; end
  def model_from_body; end
  def model_from_meta; end
  def modelize(node, text, i = nil); end
  def node_from_meta; end
  def nodes_from_body; end
  def valid_paragraph?(node); end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Description < LinkThumbnailer::Scrapers::Opengraph::Base
end
class LinkThumbnailer::Scrapers::Default::Images < LinkThumbnailer::Scrapers::Default::Base
  def abs_urls; end
  def allowed_urls; end
  def base_href; end
  def images; end
  def model_class; end
  def modelize(uri, size = nil, type = nil); end
  def needs_prefix?(uri); end
  def prefix_uri(uri); end
  def prefix_url; end
  def urls; end
  def validate_url(url); end
  def value; end
end
class LinkThumbnailer::URI
  def attribute; end
  def initialize(uri); end
  def to_s; end
  def valid?; end
end
class LinkThumbnailer::Scrapers::Opengraph::Image < LinkThumbnailer::Scrapers::Opengraph::Base
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Image::Base < LinkThumbnailer::Scrapers::Opengraph::Base
  def attribute; end
  def height; end
  def model; end
  def model_class; end
  def modelize(node, text = nil); end
  def nodes; end
  def size; end
  def value; end
  def width; end
end
class LinkThumbnailer::Scrapers::Opengraph::Image::Url < LinkThumbnailer::Scrapers::Opengraph::Image::Base
  def attribute; end
end
class LinkThumbnailer::Scrapers::Opengraph::Image::Width < LinkThumbnailer::Scrapers::Opengraph::Base
  def attribute; end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Image::Height < LinkThumbnailer::Scrapers::Opengraph::Base
  def attribute; end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Images < LinkThumbnailer::Scrapers::Opengraph::Base
  def call(attribute_name); end
end
class LinkThumbnailer::Scrapers::Default::Videos < LinkThumbnailer::Scrapers::Default::Base
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Video < LinkThumbnailer::Scrapers::Opengraph::Base
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Video::Base < LinkThumbnailer::Scrapers::Opengraph::Base
  def attribute; end
  def height; end
  def model; end
  def model_class; end
  def modelize(node, text = nil); end
  def nodes; end
  def size; end
  def value; end
  def vimeo?; end
  def width; end
end
class LinkThumbnailer::Scrapers::Opengraph::Video::Url < LinkThumbnailer::Scrapers::Opengraph::Video::Base
  def attribute; end
end
class LinkThumbnailer::Scrapers::Opengraph::Video::Width < LinkThumbnailer::Scrapers::Opengraph::Base
  def attribute; end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Video::Height < LinkThumbnailer::Scrapers::Opengraph::Base
  def attribute; end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Videos < LinkThumbnailer::Scrapers::Opengraph::Base
  def call(attribute_name); end
end
class LinkThumbnailer::Models::Favicon < LinkThumbnailer::Model
  def as_json(*arg0); end
  def initialize(uri); end
  def to_s; end
  def uri; end
end
class LinkThumbnailer::Scrapers::Default::Favicon < LinkThumbnailer::Scrapers::Default::Base
  def href; end
  def modelize(uri); end
  def node; end
  def to_uri(href); end
  def value; end
end
class LinkThumbnailer::Scrapers::Opengraph::Favicon < LinkThumbnailer::Scrapers::Opengraph::Base
  def value; end
end
class LinkThumbnailer::Scraper < SimpleDelegator
  def call; end
  def config; end
  def document; end
  def initialize(source, url); end
  def parser; end
  def scraper_class(prefix, name); end
  def source; end
  def url; end
  def website; end
end
class LinkThumbnailer::Page
  def config; end
  def generate; end
  def initialize(url, options = nil); end
  def options; end
  def processor; end
  def scraper; end
  def set_options; end
  def source; end
  def url; end
end
