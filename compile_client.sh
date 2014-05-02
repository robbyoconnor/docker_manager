#!/bin/bash

# Compile the application using grunt
(cd manager-client && grunt dist)

# Remove old assets
rm assets/app.min.*
rm assets/vendor.min.*
rm assets/config.min.*
rm assets/images/logo.png

cp manager-client/dist/index.html app/views/docker_manager/admin/index.html.erb
cp -R manager-client/dist/assets/* assets



