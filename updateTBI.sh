#!/usr/bin/env python

import redcap
import simplejson

# ENTER THE REDCAP API KEY HERE
apiKey = 

# Init the project with the api url and your specific api key
project = redcap.Project('https://redcap.vanderbilt.edu/api/', apiKey)
all_data = project.export_records()
f = open('/home/xnat/andersonLandmanTBI/redcap.txt', 'w')
simplejson.dump(all_data, f)
f.close()
