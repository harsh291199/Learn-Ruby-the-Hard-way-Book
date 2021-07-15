lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Harsh"]
  spec.email         = ["harshsuthar2911@gmail.com"]
  spec.summary       = %q{Learn Ruby the hard way}
  spec.description   = %q{I created Learn Ruby the hard way exercises projects}
  spec.homepage      = " "
  spec.license       = " "

  spec.files         = ['lib/NAME.rb']
  spec.executables   = ['bin/NAME']
  spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end