#!/bin/bash
# Turning on and off Internet radio
usage() {
	echo ""
    echo "usage:"
    echo "  radio einschalten: radio <radiostation>"
    echo "  radio ausschalten: radio off"
    echo ""
    echo "available stations:"
    echo "  Rautemusik Goldies      	=   rautegoldies"
    echo "  Rautemusik Wacken       	=   rautewacken"
    echo "  Rautemusik Club         	=   rauteclub"
    echo "  Rautemusik BigCityBeats 	=   rautebcb"
    echo "  Rautemusik Trance       	=   rautetrance"
    echo "  Rautemusik Main         	=   rautemain"
    echo "  Rautemusik Love Hits    	=   rautelove"
    echo "  UCLA Radio              	=   ucla"
    echo "  star fm                 	=   starfm"
    echo "  technobase.fmm          	=   technobase"
    echo "  Schwarze Welle          	=   rsw"
    echo "  Dark Asylum Radio       	=   dar"
    echo "  Radio Dunkle Welle      	=   rdw"
    echo "  GothVille               	=   gothville"
    echo "  Darkradio               	=   darkradio"
    echo "  WDR 4                   	=   wdr4"
    echo "  NDR 2                   	=   ndr2"
    echo "  SWR 3                   	=   swr3"
    echo "  Delta Radio             	=   delta"
    echo "  Antenne Brandenburg     	=   antenne"
    echo "  Radio UNiCC             	=   unicc"
    echo "  99.3 Radio Frankfurt/Oder 	=   ffo"
    echo "  80er Radio                	=   80er"
    echo "  90er Radio                	=   90er"
    echo "  M2 Love Radio               	=   m2love"
    echo ""
}

killmpg123() {
	if [ "$(pidof mpg123)" ]; then killall mpg123; fi
}
case "$1" in
    rautegoldies)
		killmpg123
		mpg123 -q -@ http://goldies-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#Goldies läuft" ;;
    rautewacken)
		killmpg123
		mpg123 -q -@ http://wackenradio-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#Wacken läuft" ;;
    rauteclub)
		killmpg123		
		mpg123 -q -@ http://club-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#Club läuft" ;;
	rautebcb)
		killmpg123
		mpg123 -q -@ http://bcb-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#BigCityBeats läuft" ;;
	rautemain)
		killmpg123
		mpg123 -q -@ http://main-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#Main läuft" ;;
	rautetrance)
		killmpg123
		mpg123 -q -@ http://trance-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#Trance läuft" ;;
	rautelove)
		killmpg123
		killmpg123
		mpg123 -q -@ http://lovehits-high.rautemusik.fm >/dev/null 2>&1 &
		echo "#LoveHits läuft" ;;
	ucla)
		killmpg123
		mpg123 -q -@ http://128.97.251.120:8000 >/dev/null 2>&1 &
		echo "UCLA Radio läuft" ;;
	starfm)
		killmpg123
		mpg123 -q -@ http://91.250.82.237:8000 >/dev/null 2>&1 &
		echo "star fm  läuft" ;;
	technobase)
		killmpg123
		mpg123 -q -@ http://listen.technobase.fm/tunein-oggvorbis-pls.ogg >/dev/null 2>&1 &
		echo "technobase.fm läuft" ;;
	rsw)
		killmpg123
		mpg123 -q -@ http://85.25.149.155:7500 >/dev/null 2>&1 &
		echo "Radio Schwarze Welle läuft" ;;
	dar)
		killmpg123
		mpg123 -q -@ http://64.79.109.200:8010 >/dev/null 2>&1 &
		echo "=Dark Asylum Radio= For The Digitally Insane" ;;
	rdw)
		killmpg123
		mpg123 -q -@ http://stream.dunklewelle.de:80 >/dev/null 2>&1 &
		echo "Radio Dunkle Welle läuft" ;;
	gothville)
		killmpg123
		mpg123 -q -@ http://radio.gothville.com:8000 >/dev/null 2>&1 &
		echo "GothVille läuft" ;;
	darkradio)
		killmpg123
		mpg123 -q -@ http://217.172.183.15:9955/ >/dev/null 2>&1 &
		echo "Darkradio läuft" ;;
	wdr4)
		killmpg123
		mpg123 -q -@ http://wdr-4.akacast.akamaistream.net/7/42/119438/v1/gnl.akacast.akamaistream.net/wdr-4 >/dev/null 2>&1 &
		echo "WDR läuft" ;;
	ndr2)
		killmpg123
		mpg123 -q -@ http://ndrstream.ic.llnwd.net/stream/ndrstream_ndr2_hi_mp3 >/dev/null 2>&1 &
		echo "NDR 2 läuft" ;;
	swr3)
		killmpg123
		mpg123 -q -@ http://swr-mp3-m-swr3.akacast.akamaistream.net/7/720/137136/v1/gnl.akacast.akamaistream.net/swr-mp3-m-swr3 >/dev/null 2>&1 &
		echo "SWR 3 läuft" ;;
	delta)
		killmpg123
		mpg123 -q -@ http://streams.deltaradio.de/delta-live/mp3-128/wwwradiode >/dev/null 2>&1 &
		echo "delta radio läuft" ;;
	antenne)
		killmpg123
		mpg123 -q -@ http://rbb.ic.llnwd.net/stream/rbb_antennebrandenburg_mp3_m_a --title >/dev/null 2>&1 &
		echo "Antenne Brandenburg läuft" ;;
	unicc)
		killmpg123
		mpg123 -q -@ http://stream.radio-unicc.de:8000/unicc_hq.mp3 --title >/dev/null 2>&1 &
		echo "Radio UNiCC läuft" ;;
	ffo)
		killmpg123
		mpg123 -q -@ http://stream.radiogroup.de:8000/ffo --title >/dev/null 2>&1 &
		echo "99.3 Radio Frankfurt/Oder läuft" ;;
	80er)
		killmpg123
		mpg123 -q -@ http://stream.laut.fm/90er --title >/dev/null 2>&1 &
		echo "80er Radio  läuft" ;;
	m2love)
		killmpg123
		mpg123 -q -@ http://live.m2stream.fr:80/m2love-128.mp3 --title >/dev/null 2>&1 &
		echo "M2 Love Radio  läuft" ;;
	off)
		killmpg123
		exit 0;;
	help)
		usage;;
    *)
		echo ""
		echo -e "${ered}Keine Radiostation angegeben!${nocol}"
		usage ;;
	esac
