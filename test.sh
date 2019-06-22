ps aux | grep "jekyll" | grep -v "grep" | awk '{print $2}' | xargs kill -9
bundle exec jekyll serve
