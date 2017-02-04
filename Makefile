bundle:
	bundle install

node_modules:
	npm install

css: node_modules
	npm run build:css

run:
	bundle exec jekyll serve --config _config.localhost.yml
