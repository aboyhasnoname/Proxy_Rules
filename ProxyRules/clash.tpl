# port of HTTP
port: 8888

# port of SOCKS5
socks-port: 8889

# redir port for Linux and macOS
redir-port: 8887


allow-lan: false


# Rule / Global/ Direct (default is Rule)
mode: Rule


# set log level to stdout (default is info)
# info / warning / error / debug / silent
log-level: info

# A RESTful API for clash
external-controller: '0.0.0.0:9090'


# you can put the static web resource (such as clash-dashboard) to a directory, and clash would serve in `${API}/ui`
# input is a relative path to the configuration directory or an absolute path
# external-ui: folder


# Secret for RESTful API (Optional)
secret: ""


# dns:
  # enable: true # set true to enable dns (default is false)
  # ipv6: false # default is false
  # listen: 0.0.0.0:53
  # enhanced-mode: redir-host
  # nameserver:
  #   - 114.114.114.114
  #   - tls://dns.rubyfish.cn:853 # dns over tls
  # fallback: # concurrent request with nameserver, fallback used when GEOIP country isn't CN
  #   - 8.8.8.8




Proxy:
{foreach $confs as $conf}
  - {$conf|json_encode}
{/foreach}

'Proxy Group':
    - { name: "{config::get("appName")}", type: select, proxies: {$proxies|json_encode} }
    - { name: "ðNetflix", type: select, proxies: {$proxies|json_encode} }
    - { name: "ð´YouTube", type: select, proxies: {$proxies|json_encode} }




Rule:
#积极维护
#学术网站

# 中国知网
DOMAIN-KEYWORD,cnki.net,DIRECT

# 万方
DOMAIN-KEYWORD,wanfangdata,DIRECT

# 法律数据库
DOMAIN-KEYWORD,pkulaw,DIRECT
DOMAIN-KEYWORD,westlawchina,DIRECT

# SCI 综合
DOMAIN-SUFFIX,researchgate.net,DIRECT
DOMAIN-SUFFIX,springer.com,DIRECT
DOMAIN-SUFFIX,blackwell-synergy.com,DIRECT
DOMAIN-SUFFIX,sciencemag.org,DIRECT
DOMAIN-SUFFIX,jstor.org,DIRECT
DOMAIN-SUFFIX,cabdirect.org,DIRECT
DOMAIN-SUFFIX,ieee.org,DIRECT
DOMAIN-SUFFIX,nature.com,DIRECT
DOMAIN-SUFFIX,sciencemag.org,DIRECT
DOMAIN-SUFFIX,osapublishing.org,DIRECT

# Willey 旗下
DOMAIN-SUFFIX,wiley.com,DIRECT
DOMAIN-KEYWORD,readcube,DIRECT

# Elsevier 旗下
DOMAIN-SUFFIX,scopus.com,DIRECT
DOMAIN-KEYWORD,sciencedirect,DIRECT
DOMAIN-KEYWORD,elsevier,DIRECT
DOMAIN-KEYWORD,deepdyve,DIRECT
DOMAIN-KEYWORD,els-cdn,DIRECT

# 告别出版商绑架
DOMAIN-KEYWORD,sci-hub,Proxy

  - 'DOMAIN-SUFFIX,netflix.com,ðNetflix'
  - 'DOMAIN-SUFFIX,netflix.net,ðNetflix'
  - 'DOMAIN-SUFFIX,nflxext.com,ðNetflix'
  - 'DOMAIN-SUFFIX,nflximg.com,ðNetflix'
  - 'DOMAIN-SUFFIX,nflximg.net,ðNetflix'
  - 'DOMAIN-SUFFIX,nflxso.net,ðNetflix'
  - 'DOMAIN-SUFFIX,nflxvideo.net,ðNetflix'
  - 'DOMAIN-SUFFIX,api.gamer.com.tw,ðNetflix'
  - 'DOMAIN-SUFFIX,hinet.net,ðNetflix'

#Youtube
  - 'DOMAIN-SUFFIX,youtube.com,ð´YouTube'
  - 'DOMAIN-SUFFIX,youtube-nocookie.com,ð´YouTube'
  - 'DOMAIN-SUFFIX,youtu.be,ð´YouTube'
  - 'DOMAIN-SUFFIX,googlevideo.com,ð´YouTube'

#{config::get("appName")}&DIRECT
  - 'DOMAIN,gs.apple.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mzstatic.com,DIRECT'
  - 'DOMAIN-SUFFIX,akadns.net,DIRECT'
  - 'DOMAIN-SUFFIX,aaplimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,cdn-apple.com,DIRECT'
  - 'DOMAIN,itunes.apple.com,{config::get("appName")}'
  - 'DOMAIN,beta.itunes.apple.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,apple.com,DIRECT'
  - 'DOMAIN-SUFFIX,icloud.com,DIRECT'
  - 'DOMAIN-SUFFIX,icloud-content.com,DIRECT'
  - 'DOMAIN-SUFFIX,cn,DIRECT'
  - 'DOMAIN-KEYWORD,-cn,DIRECT'
  - 'DOMAIN-SUFFIX,126.com,DIRECT'
  - 'DOMAIN-SUFFIX,126.net,DIRECT'
  - 'DOMAIN-SUFFIX,127.net,DIRECT'
  - 'DOMAIN-SUFFIX,163.com,DIRECT'
  - 'DOMAIN-SUFFIX,360buyimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,36kr.com,DIRECT'
  - 'DOMAIN-SUFFIX,acfun.tv,DIRECT'
  - 'DOMAIN-SUFFIX,air-matters.com,DIRECT'
  - 'DOMAIN-SUFFIX,aixifan.com,DIRECT'
  - 'DOMAIN-SUFFIX,akamaized.net,DIRECT'
  - 'DOMAIN-KEYWORD,alicdn,DIRECT'
  - 'DOMAIN-KEYWORD,alipay,DIRECT'
  - 'DOMAIN-KEYWORD,taobao,DIRECT'
  - 'DOMAIN-SUFFIX,amap.com,DIRECT'
  - 'DOMAIN-SUFFIX,autonavi.com,DIRECT'
  - 'DOMAIN-KEYWORD,baidu,DIRECT'
  - 'DOMAIN-SUFFIX,bdimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,bdstatic.com,DIRECT'
  - 'DOMAIN-SUFFIX,bilibili.com,DIRECT'
  - 'DOMAIN-SUFFIX,caiyunapp.com,DIRECT'
  - 'DOMAIN-SUFFIX,clouddn.com,DIRECT'
  - 'DOMAIN-SUFFIX,cnbeta.com,DIRECT'
  - 'DOMAIN-SUFFIX,cnbetacdn.com,DIRECT'
  - 'DOMAIN-SUFFIX,cootekservice.com,DIRECT'
  - 'DOMAIN-SUFFIX,csdn.net,DIRECT'
  - 'DOMAIN-SUFFIX,ctrip.com,DIRECT'
  - 'DOMAIN-SUFFIX,dgtle.com,DIRECT'
  - 'DOMAIN-SUFFIX,dianping.com,DIRECT'
  - 'DOMAIN-SUFFIX,douban.com,DIRECT'
  - 'DOMAIN-SUFFIX,doubanio.com,DIRECT'
  - 'DOMAIN-SUFFIX,duokan.com,DIRECT'
  - 'DOMAIN-SUFFIX,easou.com,DIRECT'
  - 'DOMAIN-SUFFIX,ele.me,DIRECT'
  - 'DOMAIN-SUFFIX,feng.com,DIRECT'
  - 'DOMAIN-SUFFIX,fir.im,DIRECT'
  - 'DOMAIN-SUFFIX,frdic.com,DIRECT'
  - 'DOMAIN-SUFFIX,g-cores.com,DIRECT'
  - 'DOMAIN-SUFFIX,godic.net,DIRECT'
  - 'DOMAIN-SUFFIX,gtimg.com,DIRECT'
  - 'DOMAIN,cdn.hockeyapp.net,DIRECT'
  - 'DOMAIN-SUFFIX,hongxiu.com,DIRECT'
  - 'DOMAIN-SUFFIX,hxcdn.net,DIRECT'
  - 'DOMAIN-SUFFIX,iciba.com,DIRECT'
  - 'DOMAIN-SUFFIX,ifeng.com,DIRECT'
  - 'DOMAIN-SUFFIX,ifengimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,ipip.net,DIRECT'
  - 'DOMAIN-SUFFIX,iqiyi.com,DIRECT'
  - 'DOMAIN-SUFFIX,jd.com,DIRECT'
  - 'DOMAIN-SUFFIX,jianshu.com,DIRECT'
  - 'DOMAIN-SUFFIX,knewone.com,DIRECT'
  - 'DOMAIN-SUFFIX,le.com,DIRECT'
  - 'DOMAIN-SUFFIX,lecloud.com,DIRECT'
  - 'DOMAIN-SUFFIX,lemicp.com,DIRECT'
  - 'DOMAIN-SUFFIX,luoo.net,DIRECT'
  - 'DOMAIN-SUFFIX,meituan.com,DIRECT'
  - 'DOMAIN-SUFFIX,meituan.net,DIRECT'
  - 'DOMAIN-SUFFIX,mi.com,DIRECT'
  - 'DOMAIN-SUFFIX,miaopai.com,DIRECT'
  - 'DOMAIN-SUFFIX,microsoft.com,DIRECT'
  - 'DOMAIN-SUFFIX,microsoftonline.com,DIRECT'
  - 'DOMAIN-SUFFIX,miui.com,DIRECT'
  - 'DOMAIN-SUFFIX,miwifi.com,DIRECT'
  - 'DOMAIN-SUFFIX,mob.com,DIRECT'
  - 'DOMAIN-SUFFIX,netease.com,DIRECT'
  - 'DOMAIN-KEYWORD,officecdn,DIRECT'
  - 'DOMAIN-SUFFIX,oschina.net,DIRECT'
  - 'DOMAIN-SUFFIX,ppsimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,pstatp.com,DIRECT'
  - 'DOMAIN-SUFFIX,qcloud.com,DIRECT'
  - 'DOMAIN-SUFFIX,qdaily.com,DIRECT'
  - 'DOMAIN-SUFFIX,qdmm.com,DIRECT'
  - 'DOMAIN-SUFFIX,qhimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,qidian.com,DIRECT'
  - 'DOMAIN-SUFFIX,qihucdn.com,DIRECT'
  - 'DOMAIN-SUFFIX,qiniu.com,DIRECT'
  - 'DOMAIN-SUFFIX,qiniucdn.com,DIRECT'
  - 'DOMAIN-SUFFIX,qiyipic.com,DIRECT'
  - 'DOMAIN-SUFFIX,qq.com,DIRECT'
  - 'DOMAIN-SUFFIX,qqurl.com,DIRECT'
  - 'DOMAIN-SUFFIX,rarbg.to,DIRECT'
  - 'DOMAIN-SUFFIX,rr.tv,DIRECT'
  - 'DOMAIN-SUFFIX,ruguoapp.com,DIRECT'
  - 'DOMAIN-SUFFIX,segmentfault.com,DIRECT'
  - 'DOMAIN-SUFFIX,sinaapp.com,DIRECT'
  - 'DOMAIN-SUFFIX,sogou.com,DIRECT'
  - 'DOMAIN-SUFFIX,sogoucdn.com,DIRECT'
  - 'DOMAIN-SUFFIX,sohu.com,DIRECT'
  - 'DOMAIN-SUFFIX,soku.com,DIRECT'
  - 'DOMAIN-SUFFIX,speedtest.net,DIRECT'
  - 'DOMAIN-SUFFIX,sspai.com,DIRECT'
  - 'DOMAIN-SUFFIX,suning.com,DIRECT'
  - 'DOMAIN-SUFFIX,taobao.com,DIRECT'
  - 'DOMAIN-SUFFIX,tenpay.com,DIRECT'
  - 'DOMAIN-SUFFIX,tmall.com,DIRECT'
  - 'DOMAIN-SUFFIX,tudou.com,DIRECT'
  - 'DOMAIN-SUFFIX,umetrip.com,DIRECT'
  - 'DOMAIN-SUFFIX,upaiyun.com,DIRECT'
  - 'DOMAIN-SUFFIX,upyun.com,DIRECT'
  - 'DOMAIN-SUFFIX,v2ex.com,DIRECT'
  - 'DOMAIN-SUFFIX,veryzhun.com,DIRECT'
  - 'DOMAIN-SUFFIX,weather.com,DIRECT'
  - 'DOMAIN-SUFFIX,weibo.com,DIRECT'
  - 'DOMAIN-SUFFIX,xiami.com,DIRECT'
  - 'DOMAIN-SUFFIX,xiami.net,DIRECT'
  - 'DOMAIN-SUFFIX,xiaomicp.com,DIRECT'
  - 'DOMAIN-SUFFIX,ximalaya.com,DIRECT'
  - 'DOMAIN-SUFFIX,xmcdn.com,DIRECT'
  - 'DOMAIN-SUFFIX,xunlei.com,DIRECT'
  - 'DOMAIN-SUFFIX,yhd.com,DIRECT'
  - 'DOMAIN-SUFFIX,yihaodianimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,yinxiang.com,DIRECT'
  - 'DOMAIN-SUFFIX,ykimg.com,DIRECT'
  - 'DOMAIN-SUFFIX,youdao.com,DIRECT'
  - 'DOMAIN-SUFFIX,youku.com,DIRECT'
  - 'DOMAIN-SUFFIX,zealer.com,DIRECT'
  - 'DOMAIN-SUFFIX,zhihu.com,DIRECT'
  - 'DOMAIN-SUFFIX,zhimg.com,DIRECT'
  - 'DOMAIN-KEYWORD,amazon,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,google,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,gmail,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,youtube,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,facebook,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fb.me,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fbcdn.net,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,twitter,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,instagram,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,dropbox,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,twimg.com,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,blogspot,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,youtu.be,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,whatsapp,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,9to5mac.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,abpchina.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,adblockplus.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,adobe.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,alfredapp.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,amplitude.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ampproject.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,android.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,angularjs.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,aolcdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,apkpure.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,appledaily.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,appshopper.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,appspot.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,arcgis.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,archive.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,armorgames.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,aspnetcdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,att.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,awsstatic.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,azureedge.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,azurewebsites.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bing.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bintray.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bit.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bit.ly,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bitbucket.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bjango.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bkrtx.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,blog.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,blogcdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,blogger.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,blogsmithmedia.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,blogspot.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,blogspot.hk,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,bloomberg.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,box.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,box.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cachefly.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,chromium.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cl.ly,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cloudflare.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cloudfront.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cloudmagic.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cmail19.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cnet.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,cocoapods.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,comodoca.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,content.office.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,crashlytics.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,culturedcode.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,d.pr,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,danilo.to,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,dayone.me,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,db.tt,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,deskconnect.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,digicert.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,disq.us,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,disqus.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,disquscdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,dnsimple.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,docker.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,dribbble.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,droplr.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,duckduckgo.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,dueapp.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,dytt8.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,edgecastcdn.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,edgekey.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,edgesuite.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,engadget.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,entrust.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,eurekavpt.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,evernote.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fabric.io,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fast.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fastly.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fc2.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,feedburner.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,feedly.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,feedsportal.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,fiftythree.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,firebaseio.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,flexibits.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,flickr.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,flipboard.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,g.co,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gabia.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,geni.us,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gfx.ms,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ggpht.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ghostnoteapp.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,git.io,{config::get("appName")}'
  - 'DOMAIN-KEYWORD,github,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,globalsign.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gmodules.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,godaddy.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,golang.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gongm.in,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,goo.gl,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,goodreaders.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,goodreads.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gravatar.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gstatic.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,gvt0.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,hockeyapp.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,hotmail.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,icons8.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ift.tt,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ifttt.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,iherb.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,imageshack.us,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,img.ly,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,imgur.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,imore.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,instapaper.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ipn.li,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,is.gd,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,issuu.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,itgonglun.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,itun.es,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ixquick.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,j.mp,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,js.revsci.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,jshint.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,jtvnw.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,justgetflux.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,kat.cr,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,klip.me,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,libsyn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,licdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,linkedin.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,linode.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,lithium.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,littlehj.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,live.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,live.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,livefilestore.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,llnwd.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,macid.co,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,macromedia.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,macrumors.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mashable.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mathjax.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,medium.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mega.co.nz,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mega.nz,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,megaupload.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,microsofttranslator.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mindnode.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,mobile01.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,modmyi.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,msedge.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,myfontastic.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,name.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,nextmedia.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,nsstatic.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,nssurge.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,nyt.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,nytimes.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,office365.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,omnigroup.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,onedrive.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,onenote.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ooyala.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,openvpn.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,openwrt.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,orkut.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,osxdaily.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,outlook.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ow.ly,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,paddleapi.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,parallels.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,parse.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,pdfexpert.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,periscope.tv,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,pinboard.in,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,pinterest.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,pixelmator.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,pixiv.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,playpcesor.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,playstation.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,playstation.com.hk,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,playstation.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,playstationnetwork.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,pushwoosh.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,rime.im,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,servebom.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,sfx.ms,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,shadowsocks.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,sharethis.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,shazam.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,skype.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,smartdns{config::get("appName")}.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,smartmailcloud.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,sndcdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,sony.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,soundcloud.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,sourceforge.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,spotify.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,squarespace.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,sstatic.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,st.luluku.pw,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,stackoverflow.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,startpage.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,staticflickr.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,steamcommunity.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,symauth.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,symcb.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,symcd.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tapbots.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tapbots.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tdesktop.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,techcrunch.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,techsmith.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,thepiratebay.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,theverge.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,time.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,timeinc.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tiny.cc,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tinypic.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tmblr.co,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,todoist.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,trello.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,trustasiassl.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tumblr.co,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tumblr.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tweetdeck.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,tweetmarker.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,twitch.tv,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,txmblr.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,typekit.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ubertags.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ublock.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ubnt.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ulyssesapp.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,urchin.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,usertrust.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,v.gd,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vimeo.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vimeocdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vine.co,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vivaldi.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vox-cdn.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vsco.co,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,vultr.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,w.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,w3schools.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,webtype.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wikiwand.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wikileaks.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wikimedia.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wikipedia.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wikipedia.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,windows.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,windows.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wire.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wordpress.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,workflowy.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wp.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wsj.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,wsj.net,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,xda-developers.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,xeeno.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,xiti.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,yahoo.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,yimg.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ying.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,yoyo.org,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,ytimg.com,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,telegra.ph,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,telegram.org,{config::get("appName")}'
  - 'IP-CIDR,91.108.56.0/22,{config::get("appName")}'
  - 'IP-CIDR,91.108.4.0/22,{config::get("appName")}'
  - 'IP-CIDR,91.108.8.0/22,{config::get("appName")}'
  - 'IP-CIDR,109.239.140.0/24,{config::get("appName")}'
  - 'IP-CIDR,149.154.160.0/20,{config::get("appName")}'
  - 'IP-CIDR,149.154.164.0/22,{config::get("appName")}'
  - 'DOMAIN-SUFFIX,local,DIRECT'
  - 'IP-CIDR,127.0.0.0/8,DIRECT'
  - 'IP-CIDR,172.16.0.0/12,DIRECT'
  - 'IP-CIDR,192.168.0.0/16,DIRECT'
  - 'IP-CIDR,10.0.0.0/8,DIRECT'
  - 'IP-CIDR,17.0.0.0/8,DIRECT'
  - 'IP-CIDR,100.64.0.0/10,DIRECT'
  - 'GEOIP,CN,DIRECT'
  - 'MATCH,{config::get("appName")}'