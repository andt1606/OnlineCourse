$(".slider-nav").slick({
    autoplay: false,
    slidesToShow: 3,
    slidesToScroll: 3,
    prevArrow: '<i class="fa fa-angle-left left"></i>',
    nextArrow: '<i class="fa fa-angle-right right"></i>',
    responsive: [
        {
            breakpoint: 992,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 576,
            settings: {
                arrows: false,
                dots: true,
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

$(".students__carousel").slick({
    autoplay: false,
    slidesToShow: 5,
    slidesToScroll: 5,
    prevArrow: '<i class="fa fa-angle-left left"></i>',
    nextArrow: '<i class="fa fa-angle-right right"></i>',
    responsive: [
        {
            breakpoint: 1200,
            settings: {
                slidesToShow: 4,
                slidesToScroll: 4
            }
        },
        {
            breakpoint: 992,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 576,
            settings: {
                arrows: false,
                dots: true,
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

$(".services__carousel").slick({
    autoplay: false,
    slidesToShow: 3,
    slidesToScroll: 3,
    prevArrow: '<i class="fa fa-angle-left left"></i>',
    nextArrow: '<i class="fa fa-angle-right right"></i>',
    responsive: [
        {
            breakpoint: 1200,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3
            }
        },
        {
            breakpoint: 992,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                arrows: false,
                dots: true
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                dots: true
            }
        },
        {
            breakpoint: 576,
            settings: {
                arrows: false,
                dots: true,
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

$(".intro__bottom__carousel").slick({
    autoplay: false,
    slidesToShow: 5,
    slidesToScroll: 5,
    prevArrow: '<i class="fa fa-angle-left left"></i>',
    nextArrow: '<i class="fa fa-angle-right right"></i>',
    responsive: [
        {
            breakpoint: 1200,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3
            }
        },
        {
            breakpoint: 992,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 576,
            settings: {
                arrows: false,
                dots: true,
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});