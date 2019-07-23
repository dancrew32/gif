deps:
	sudo apt-get install imagemagick

scrape:
	rm -rf ./images/ && mkdir images && cp /tmp/*.png ./images

run:
	# FPS

	convert -background white -alpha remove -layers OptimizePlus \
					-delay 1x24 -loop 0 ./images/* out.gif && du -k out.gif
# convert -resize 768x576 -delay 1x24 -loop 0 *.jpg myimage.gif
# convert -resize 50% -delay 1x24 -loop 0 image_{0..99}.jpg output.gif
				
play:
	eog out.gif

checkin:
	git add -A && git commit && git push origin master
