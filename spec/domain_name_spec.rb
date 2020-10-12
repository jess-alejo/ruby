# frozen_string_literal: true

# Parse the domain name of a given url
#
# @parameter [String] url The URL
# @return [String]
def domain_name(url)
  URI.parse(url).host.split('.').last(2)[0]
end

describe '#domain_name' do
  it { expect(domain_name('https://www.google.com')).to eq 'google' }
  it { expect(domain_name('https://github.com/json-schema-org/')).to eq 'github' }
  it { expect(domain_name('https://m.twitter.com/login')).to eq 'twitter' }
end
