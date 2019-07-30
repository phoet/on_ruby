# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/omniauth-oauth/all/omniauth-oauth.rbi
#
# omniauth-oauth-1.1.0
module OmniAuth
end
module OmniAuth::OAuth
end
module OmniAuth::Strategies
end
class OmniAuth::Strategies::OAuth
  def access_token; end
  def callback_phase; end
  def consumer; end
  def request_phase; end
  extend OmniAuth::Strategy::ClassMethods
  include OmniAuth::Strategy
end
