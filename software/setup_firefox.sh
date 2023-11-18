# Policies for Firefox 
# sudo vi /usr/lib/firefox-esr/distribution/policies.json 
# Documentations: 
# 1 https://github.com/mozilla/policy-templates/blob/master/linux/policies.json
# 2 https://mozilla.github.io/policy-templates/
# After changes reload startup-config: https://support.mozilla.org/en-US/kb/use-troubleshooting-information-page-fix-firefox

# Example to block all urls beside google.com
"WebsiteFilter": {
      "Block": ["<all_urls>"],
      "Exceptions": ["*://*.google.com/*"]
    }
