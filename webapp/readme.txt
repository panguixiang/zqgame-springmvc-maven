#webapp下的以下3个文件夹是原有.net系统新闻内容里用到的图片，这三个文件夹下的图片就放在此项目里不要移动，因为这些图片路径是写在了text里，
ckfinder
images\images
Main\File

frontimages文件夹里放置前台页面美工图片
reg_quick_files文件夹里放置前台注册页面美工css及js
flv文件夹放置前台用到的flv文件
fileupload文件夹保持前台上传的图片
css文件夹放置前台本身总体css文件


bw-119文件夹为119服务器上面的bw前台项目


http://bwtest.zqgame.com/guide.html
http://bwtest.zqgame.com/IndexMain.html
http://bwtest.zqgame.com/ziliao.shtml
http://bwtest.zqgame.com/download.shtml
http://bwtest.zqgame.com/bwreg.shtml
http://bwtest.zqgame.com/bwTips.shtml
http://bwtest.zqgame.com/bwvip.shtml
http://bwtest.zqgame.com/reg.htm

http://bwtest.zqgame.com/a/guide/index.html
http://bwtest.zqgame.com/a/sw/index01.html
http://bwtest.zqgame.com/a/AnQuan/index.html
http://bwtest.zqgame.com/a/AnQuan/index2.html
http://bwtest.zqgame.com/a/AnQuan/index3.html
http://bwtest.zqgame.com/a/AnQuan/index4.html
http://bwtest.zqgame.com/2013/fool/index.html
http://bwtest.zqgame.com/c/1-12/index.html
http://bwtest.zqgame.com/2013/kqz/index.html
http://bwtest.zqgame.com/picture/bwart.shtml

http://bwtest.zqgame.com/event/total/index.html
http://bwtest.zqgame.com/kfd/focus2.html



cp -Rf a/guide/ a/sw/ a/AnQuan 2013/ c/ picture/ event/ /home/zqgame/frontWeb
cp guide.html IndexMain.html bwreg.shtml ziliao.shtml download.shtml /home/zqgame/frontWeb