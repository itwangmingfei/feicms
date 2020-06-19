$(function() {

    /* data-hover="owl" */
    if ($('[data-hover="owl"]').length && $('[data-hover="owl"]').is(":visible")) {
        var $allDropdowns = $();
        $allDropdowns = $allDropdowns.add($('[data-hover="owl"]').parent());
        $('[data-hover="owl"]').each(function() {
            var $this = $(this),
            $parent = $this.parent(),
            delay = 200,
            timeoutHover;

            $parent.hover(function() {
                window.clearTimeout(timeoutHover);
                $allDropdowns.removeClass('open');
                if (!$parent.hasClass('open')) {
                    $parent.addClass('open');
                }
            },
            function() {
                timeoutHover = window.setTimeout(function() {
                    $parent.removeClass('open');
                },
                delay);
            });
        });
    }

    /* owl */
    $('[data-toggle="owl"]').on('click',
    function(event) {
        event.preventDefault();
        var selector = $(this).attr('data-target'),
        mask = $(this).attr('data-backdrop');
        if (!selector) {
            selector = $(this).attr('href');
            selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '');
        }
        if (mask) {
            if (!$(this).hasClass('owl')) {
                $('[data-toggle="owl"]').removeClass('owl');
                $(this).addClass('owl');
                $(selector).addClass('in');
            } else {
                $(this).removeClass('owl');
                $(selector).removeClass('in');
            }
        } else {
            backdrop = $('.backdrop');
            if (!backdrop.length) {
                $(document.body).append('<div class="backdrop in"></div>');
            }
            if (!$(this).hasClass('owl')) {
                $('[data-toggle="owl"]').removeClass('owl');
                $(this).addClass('owl');
                $(selector).addClass('in');
                backdrop.addClass('in');
            } else {
                $(this).removeClass('owl');
                $(selector).removeClass('in');
                backdrop.removeClass('in');
            }
            $('.backdrop').on('click',
            function(event) {
                event.preventDefault();
                $('[data-toggle="owl"]').removeClass('owl');
                $(this).removeClass('in');
                $(selector).removeClass('in');
            });
        }
    });

    /* data-dismiss="owl" */
    $('[data-dismiss="owl"]').on('click',
    function(event) {
        event.preventDefault();
        var $this = $(this),
        selector = $this.attr('data-target'),
        backdrop = $('.backdrop');
        if (!selector) {
            selector = $this.attr('href');
            selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '');
        }
        var $parent = $(selector);
        if (!$parent.length) $parent = $this.closest('.dropdown');
        $('[data-toggle="owl"]').removeClass('owl');
        $parent.removeClass('in');
        if (backdrop.length) {
            backdrop.removeClass('in');
        }
        return false;
    });

    /* filter-more */
    $("#filter-more > a").on('click',
    function(event) {
        event.preventDefault();
        var that = $(this),
        selector = $("#filter-append");
        if (selector.is(":visible")) {
            selector.slideUp("fast");
            that.find(".text").text("展开筛选");
        } else {
            selector.slideDown("fast");
            that.find(".text").text("收起筛选");
        }
    });

    /* detail-intro-more */
    $("#detail-intro-more").on('click',
    function(event) {
        event.preventDefault();
        var that = $(this),
        selector = that.parent("li");
        if (selector.hasClass("owl")) {
            selector.removeClass("owl");
            that.text("详情");
        } else {
            selector.addClass("owl");
            that.text("收起");
        }
    });

    /* actor-more */
    $("#actor-more > a").on('click',
    function(event) {
        event.preventDefault();
        var that = $(this),
        selector = $("#actor-intro");
        if (that.hasClass("owl")) {
            selector.css("max-height", "120px");
            that.removeClass("owl");
            that.find(".text").text('查看更多');
        } else {
            selector.css("max-height", "5000px");
            that.addClass("owl");
            that.find(".text").text('收起');
        }
    });
		
		/* copy-weixin */
		if($("#clipboard").length){
			$.getScript("//lib.baomitu.com/clipboard.js/2.0.1/clipboard.min.js", function(){
				var clipboard = new ClipboardJS('#clipboard', {
					text: function(trigger) {
						return window.location.href;
					}
				});
				clipboard.on('success',function(e){
					e.clearSelection();
					alert("复制成功，长按粘贴发给微信朋友吧！");
				});
				clipboard.on('error',function(e){
					alert("复制失败，请刷新重试！");
				});
			});
		};
		
		/*qrcode img*/
		if($("#qrcode").length){
			$("#qrcode").attr("src","//cdn.feifeicms.co/qrcode/1.0/?w=150&h=150&url="+encodeURIComponent(feifei.browser.url));
		};
		
		/*history-get*/
		if($(".history-record-get").length){
			$.get(cms.root+'index.php?g=home&m=record&a=vod&sid=1', function(data){
				if(data == ''){
					data = '<strong>暂无观看记录</strong>';
				}
				$(".history-record-get").html(data);
			});
		}
});

// Javacsript Tab Change
function setTab(name, cursel, n) {
    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "active": "";
        con.style.display = i == cursel ? "block": "none";
    }
}