(function($) {
    $('.modal2 .close2').on('click', function() {
        $(this).closest('.modal-overlay').removeClass('show');
    });

    $('.show-modal').on('click', function() {
        $('.modal-overlay').addClass('show');
    });
})(jQuery);