// JavaScript Document
(function($) {  
    $.fn.gunName = function(time) {
    	var clonefst=0;
		var clonelast=0;
		var gg=0;
		var setcout1=0;
		var self=$(this);
		function guner()
		{	
			if(self.find("li:first").height()<=Math.abs(gg)){
				gg=0;	
				clonefst=self.find("li:first").clone();
				self.find("ul").append(clonefst);
				self.find("li:first").remove();
				self.find("ul").css("top",0+"px");
			}
			gg--;
			self.find("ul").css("top",gg+"px");
		}
		
		setcout1=setInterval(guner,time);
		self.hover(function(){clearInterval(setcout1);},function(){setcout1=setInterval(guner,50);});
    };
})(jQuery); 

$(function(){
		$("#gun").gunName(80);
		$("#gun1").gunName(80);
		
		$(".b2_1 a").click(function(){
			
			$(".b2_1 a").removeClass("over");
			$(this).addClass("over");
			//alert($(this).parent().index());
			if(isdownload)
			{
				$(".b2_1 a").eq(2).addClass("over");
			}
			if(isreg)
			{
				$(".b2_1 a").eq(1).addClass("over");
			}
			if(idlinqulibao)
			{
				$(".b2_1 a").eq(3).addClass("over");
			}
		});
		
		var indx=0;
		$(".b2_1 .combtn").click(function(){
			indx=$(".b2_1 .combtn").index($(this));
			$(".tcc_1").hide();
			$(".tcc_1").eq(indx).show();
			$("#tcc").show();
		});
		$(".ggao").click(function(){
			$(".tcc_1").hide();
			$(".tcc_1").eq(0).show();
			$("#tcc").show();
		});
		
		
});