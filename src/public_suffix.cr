require "uri"
require "./public_suffix/domain"
require "./public_suffix/list"
require "./public_suffix/rule"

module PublicSuffix
  VERSION = "0.1.0"

  class DomainNotAllowed < Exception
  end

  class DomainInvalid < Exception
  end

  def self.domain(hostname : String)
    Domain.new(hostname)
  end
end