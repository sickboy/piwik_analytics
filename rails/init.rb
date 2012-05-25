require 'piwik_analytics'

unless ActionController::Base.method_defined? :add_piwik_analytics_tracking
  ActionController::Base.send :include, PiwikAnalytics::PiwikAnalyticsMixin
  ActionController::Base.send :after_filter, :add_piwik_analytics_tracking
end
