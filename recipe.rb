class UA2Website < FPM::Cookery::Recipe

    source      'nothing', :with => :noop
    name        'ua2-website'
    description 'UA Website'
    maintainer  'Jon Topper <jon@scalefactory.com>'
    vendor      'fpm'
    version     '1.0'

    
    if ENV.has_key?('PKG_REVISION')
        revision ENV['PKG_REVISION']
    else
        raise 'No PKG_REVISION passed in the environment'
    end

    def build
    end

    def install
        root('srv/web/ua2.org').install Dir["#{workdir}/htdocs/*"]
    end

end
