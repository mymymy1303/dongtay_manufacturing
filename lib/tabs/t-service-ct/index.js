function activeTabServiceCt() {
	let geActive = '.canhcam-tabs-service-ct .tabs-nav .tab-active',
		activePos = $(geActive).position(),
		tabItems = $('.canhcam-tabs-service-ct .tabs-nav li'),
		tabCurrentItem = tabItems.filter('.active'),
		activeTab1 = {
		changePos: function () {
			activePos = $(geActive).position();
		},
		changeTab: function () {
			let getTabId = $(geActive + ' a').attr('tab-id');
			$('.canhcam-tabs-service-ct .tab').stop().fadeOut(300, function () {
				$(this).removeClass('tab-active');
			}).hide();
			$('.canhcam-tabs-service-ct .tab[tab-id=' + getTabId + ']').stop().fadeIn(300, function () {
				$(this).addClass('tab-active');
			});
		},
		doButton: function () {
			$('.canhcam-tabs-service-ct .tabs-nav a').on('click', function (e) {
				e.preventDefault();
				let tabId = $(this).attr('tab-id');
				$('.canhcam-tabs-service-ct .tabs-nav a').stop().parent().removeClass('tabs-nav-item-active');
				$(this).stop().parent().addClass('tabs-nav-item-active');
				activeTab1.changePos();
				tabCurrentItem = tabItems.filter('tabs-nav-item-active');
				$('.canhcam-tabs-service-ct .tab').stop().fadeOut(300, function () {
					$(this).removeClass('tab-active');
				}).hide();
				$('.canhcam-tabs-service-ct .tab[tab-id="' + tabId + '"]').stop().fadeIn(300, function () {
					$(this).addClass('tab-active');
					$('.toggle').click()
				});
			});
		}
	}
	activeTab1.changePos()
	activeTab1.doButton()
}
function activeTabServiceCtHeader() {
	let geActive = '.canhcam-tabs-service-ct .tabs-header .tab-active',
		activePos = $(geActive).position(),
		tabItems = $('.canhcam-tabs-service-ct .tabs-header li'),
		tabCurrentItem = tabItems.filter('.active'),
		activeTab1 = {
		changePos: function () {
			activePos = $(geActive).position();
		},
		changeTab: function () {
			let getTabId = $(geActive + ' a').attr('tab-id');
			$('.canhcam-tabs-service-ct .tab').stop().fadeOut(300, function () {
				$(this).removeClass('tab-active');
			}).hide();
			$('.canhcam-tabs-service-ct .tab[tab-id=' + getTabId + ']').stop().fadeIn(300, function () {
				$(this).addClass('tab-active');
			});
		},
		doButton: function () {
			$('.canhcam-tabs-service-ct .tabs-header a').on('click', function (e) {
				e.preventDefault();
				let tabId = $(this).attr('tab-id');
				$('.canhcam-tabs-service-ct .tabs-header a').stop().parent().removeClass('nav-active');
				$(this).stop().parent().addClass('nav-active');
				activeTab1.changePos();
				tabCurrentItem = tabItems.filter('nav-active');
				$('.canhcam-tabs-service-ct .tab').stop().fadeOut(300, function () {
					$(this).removeClass('tab-active');
				}).hide();
				$('.canhcam-tabs-service-ct .tab[tab-id="' + tabId + '"]').stop().fadeIn(300, function () {
					$(this).addClass('tab-active');
				});
			});
		}
	}
	activeTab1.changePos()
	activeTab1.doButton()
}

$(document).ready(function () {
	$('.toggle').on('click', function() {
		$(this).toggleClass('toggle-active')
		$('.tabs-nav').toggleClass('tabs-nav-active')
	})

	$('.news-detail-page .canhcam-card-service').prev().removeClass('bg-blue');
});
