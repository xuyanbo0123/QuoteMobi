//var product;
//
//var submitted;
//var leaveBehindCalled = false;
//var sHeight = $(window).height() + 100;
//var zip;
//var geo;
//var complete = 0;
//var emailPattern = /^\s*[a-z0-9!#$%&'*+/=?^_`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+(aero|asia|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|tel|travel|a[c-gil-oq-uwxz]|b[abd-jmnorstvwyz]|c[acdf-iklnruvxyz]|d[ejkmoz]|e[ceghrsu]|f[ijkmor]|g[abd-ilmnp-uwy]|h[kmnrtu]|i[del-oq-t]|j[emop]|k[eghimnprwyz]|l[abcikr-vy]|m[acdeghk-z]|n[acfgilopruz]|p[ae-hk-nrstwy]|qa|r[eosuw]|s[a-eg-ortuvyz]|t[cdfghj-prtvwz]|u[agksyz]|v[aceginu]|w[fs]|y[etu]|z[amw]|arpa)\s*$/i;
//
//function isDigit(d) {
//    var num = d.replace(/[^0-9]+/g, '');
//    return num.match(/^\d+$/);
//}
//
//function isValidAreaCode (phone) {
//    return phone.match(/^(20[1-9]|21[02-9]|22[45689]|23[1469]|24[08]|25[0-46]|26[0279]|27[068]|28[139]|30[1-9]|31[02-9]|32[0135]|33[014679]|34[017]|35[12]|36[019]|38[056]|40[1-9]|41[02-9]|42[345]|43[02458]|44[023]|45[0]|46[49]|47[0589]|48[04]|50[1-9]|51[02-9]|52[0]|53[0]|54[01]|55[179]|56[1-47]|57[01345]|58[056]|60[1-9]|61[02-9]|62[03678]|63[016]|64[167]|65[01]|66[0129]|67[0189]|68[29]|70[1-9]|71[02-9]|72[047]|73[1247]|74[07]|75[47]|76[02-59]|77[02-589]|78[01567]|80[1-8]|81[02-9]|82[8]|83[0125]|84[3578]|85[06-9]|86[02-57]|87[028]|89[8]|90[1-9]|91[02-9]|92[0578]|93[15679]|94[0179]|95[124679]|97[0-3589]|98[0459])((?!\1|55501\d\d|95[089]|976)[2-9](?!11)\d\d\d\d\d\d)$/);
//}
//var lb = { 'auto': 457, 'health': 467, 'home': 192 };
//var placements = { 'auto': 345, 'health': 466, 'home': 191 };
//window.addEventListener("load",function() {
//    setTimeout(function(){
//        window.scrollTo(0, 30);
//    }, 0);
//});
//
//function reset() {
//    submitted = false;
//}
//
//function animateClouds() {
//    $('#mobile').css({
//        'background-position-x': '+=1px'
//    });
//    animation = setTimeout("animateClouds()", 50);
//}
//
//function blinkFade(elt) {
//    elt.delay(500).fadeOut(500, function() {
//        elt.fadeIn(500, function() {
//            blinkFade(elt);
//        });
//    });
//}
//
//function rand() {
//    return '&x=' + Math.floor(Math.random() * 1000000000);
//}
//
//function next(cur, next, callback) {
//    var c = $('#' + cur);
//    var n = $('#' + next);
//    setTimeout(function() {
//        c.animate({
//                'margin-top': sHeight
//            },
//            {
//                duration: 400,
//                easing: 'easeInBack',
//                complete: function() {
//                    n.animate({
//                            'margin-top': 60,
//                        },
//                        {
//                            duration: 400,
//                            easing: 'easeOutBack',
//                            complete: function() {
//                                if ($.isFunction(callback)) {
//                                    callback();
//                                }
//                            }
//                        });
//                }
//            });
//    }, 5);
//}
//
//function unlockScreen() {
//    $('#mobile').css('overflow-y', 'auto');
//}
//
//function getResults(url) {
//    window.open(url);
//}
//
// INIT

//$(function() {
//    $('.card:not(.active)').css({
//        'margin-top': sHeight
//    });
//
//
//    var delay = 2000;
//    var fadeOut = 400;
//    var fadeIn = 400;
//    $('#loader').delay(delay).fadeOut(fadeOut, function() {
//        animateClouds();
//        $('#title-screen').fadeIn(fadeIn);
//        $('#title-content').center();
//        blinkFade($('#start-button'));
//    });
//
//    $('#title-content').off('click').on({
//        click: function() {
//            next('title-content', 'zip', function() {
//                $('#f-zip').focus();
//                $.get('/js/home.json?page=zip&path=home');
//            });
//        }
//    });
//    $.get('/js/home.json?page=home&path=home');
//    $('#f-phone').mask('(###) ###-####', { placeholder: ' ' });
//});
//
//var q = 0;
//var birthday;
//
//function leadingZero(n) {
//    return (n < 10 ? ('0' + n) : n);
//}
//
//function initForm() {
//    $('.q:eq(' + q + ')').show();
//    if (product == 'auto') {
//        runCarPicker();
//    }
//    $('.q, #mobile-form').css('width', $(window).width() > 320 ? 320 : $(window).width());
//
//    var numDays = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
//    $('#bday-month li').on('click', function() {
//        var month = $(this).data('value');
//        var html = '';
//        for (i = 1; i < numDays[parseInt(month, 10) - 1] + 1; i++) {
//            html += '<li data-value="' + leadingZero(i) + '">' + i + '</li>';
//        }
//        $('#bday-day').html(html);
//    });
//
//    $('#bday-month, #bday-day').on('click', 'li', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        formNext();
//    });
//
//    $('#gender-selector li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        $('#gender').val($(this).data('value'));
//        formNext();
//    });
//
//    $('#marital-selector li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        $('input[name="married"]').val($(this).data('value'));
//        formNext();
//    });
//
//    $('#homeowner-selector li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        $('input[name="home_ownership"]').val($(this).data('value'));
//        formNext();
//    });
//
//    $('#sr22-selector li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        $('#sr_22').val($(this).data('value'));
//    });
//
//    $('#license-selector li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        $('#license-active').val($(this).data('value'));
//    });
//
//    $('#incidents li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//    });
//
//    $('#insurer li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        if (!$(this).data('value')) {
//            $('#currently_insured').val(0)
//        }
//        else {
//            $('#currently_insured').val(1)
//            $('#current_company').val($(this).data('value'));
//        }
//        formNext();
//    });
//
//    $('#credit-selector li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        $('#credit-rating').val($(this).data('value'));
//        formNext();
//    });
//
//    /* Health */
//
//    $('#mobile .mc li').off('click').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//    });
//
//    $('#life-events li').on('click', function() {
//        $(this).parent().find('li').removeClass('selected');
//        $(this).addClass('selected');
//        formNext();
//    });
//
//    $('#medical-conditions li').off('click').on('click', function() {
//        if ($(this).data('value') != '') {
//            $('#medical-conditions-none').removeClass('selected');
//        }
//        else {
//            $('#medical-conditions li').removeClass('selected');
//        }
//        $(this).toggleClass('selected');
//    });
//
//}
//
//var carSteps = ['year', 'make', 'model'];
//var carTops = ['', 10, 5];
//var carStep = 0;
//
//function runCarPicker(callback) {
//    var params = $('#car input[type="hidden"]').serialize();
//    var html = '';
//    var more = '';
//    var elt = $('#' + carSteps[carStep]);
//    $.get('/js/polk.json?' + params + '&top=' + carTops[carStep], function(d) {
//        if (carSteps[carStep] == 'year') {
//            $.each(d.all, function(i, v) {
//                if (i < 24) {
//                    html += '<li data-value="' + v + '">';
//                    html += v;
//                    html += '</li>';
//                }
//                else {
//                    more += '<option value="' + v + '">' + v + '</option>';
//                }
//            });
//        }
//        else {
//            var data = d.top ? d.top : d.all;
//            $.each(data, function(i, v) {
//                html += '<li data-value="' + v + '">';
//                html += v;
//                html += '</li>';
//            });
//            $.each(d.all, function(i, v) {
//                more += '<option value="' + v + '">' + v + '</option>';
//            });
//        }
//        elt.html(html);
//        if (d.top || !carStep) {
//            elt.parent().find('select.more').append(more);
//        }
//        else {
//            elt.parent().find('.select-more').hide();
//        }
//        if ($.isFunction(callback)) {
//            callback();
//        }
//        elt.on(
//            'click',
//            'li',
//            function() {
//                elt.find('li').removeClass();
//                $(this).addClass('selected');
//                updateCarAttr(carSteps[carStep], $(this).data('value'));
//            }
//        );
//        html = '';
//    });
//}
//
//function updateCarAttr(field, value) {
//    $('#car-' + field).val(value);
//    carStep++;
//    if (carStep == 3) {
//        var params = $('#car input[type="hidden"]').serialize();
//        $.get('/js/polk.json?' + params, function(d) {
//            $('#car-submodel').val(d.default);
//            formNext();
//        });
//    }
//    else {
//        runCarPicker(function() {
//            formNext();
//        });
//    }
//}
//
//function setBirthday() {
//    var y = $('#bday-year').val();
//    if (!/\d\d/.test(y)) {
//        alert($('#bday-year').data('error'));
//        $('#bday-year').focus();
//        return false;
//    }
//    else {
//        var birthday = '19' + $('#bday-year').val() + '-' + $('#bday-month li.selected').attr('data-value') + '-' + $('#bday-day li.selected').attr('data-value');
//
//        if (getAge(birthday) < 18) {
//            alert('You must be between the ages of 18 and 100 to continue');
//            $('#bday-year').select();
//            return false;
//        }
//        else {
//            formNext();
//            return true;
//        }
//    }
//}
//
//function getAge(dateString) {
//    var today = new Date();
//    var birthDate = new Date(dateString);
//    var age = today.getFullYear() - birthDate.getFullYear();
//    var m = today.getMonth() - birthDate.getMonth();
//    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
//        age--;
//    }
//    return age;
//}
//
//function validateForm() {
//    var errors = 0;
//    $.each($('.q.current input'), function(i, v) {
//        if ($(this).attr('type') == 'tel' && (!$(this).val() || !isDigit($(this).val()))) {
//            alert($(v).data('error'));
//            $(v).select();
//            errors++;
//            return false;
//        }
//        if ($(this).is(':text')) {
//            if ($(v).val() == '') {
//                alert($(v).data('error'));
//                $(v).select();
//                errors++;
//                return false;
//            }
//            if ($(v).attr('id') == 'f-email' && !emailPattern.test($('#f-email').val())) {
//                alert($('#f-email').data('error'));
//                $('#f-email').select();
//                errors++;
//                return false;
//            }
//
//            var name = $('#f-name');
//            var fullName = name.val();
//            if ($(v).attr('id') == 'f-name' && !/^\s*([a-z][a-z'\-]*[a-z])[\.\s]\s*(?:([a-z])(?:[a-z'\-]*[a-z])?[\.\s]\s*)?(?!(?:I|II|III|IV|V|Jr|Sr)\b)([a-z][a-z'\-]*[a-z])(?:[\.\s]\s*(I|II|III|IV|V|Jr|Sr))?\.?\s*$/i.test(fullName)) {
//                alert($('#f-name').data('error'));
//                $('#f-name').select();
//                errors++;
//                return false;
//            }
//        }
//    });
//    if (!errors) {
//        return true;
//    }
//}
//
//function mcFormNext(container) {
//    if ($('#' + container + ' .form li.selected').length < $('#' + container + ' .form ul').length) {
//        alert('Please answer all questions');
//        return false;
//    }
//    else {
//        formNext();
//    }
//}
//
//function formNext() {
//    if (validateForm()) {
//        q++;
//        setTimeout(function() {
//            $('#mobile-form').scrollTo(
//                '.q:eq(' + q + ')',
//                400,
//                {
//                    axis: 'x',
//                    onAfter: function() {
//                        $('.q:eq(' + q + ') input:first').focus();
//                        $('.q').removeClass('current');
//                        $('.q:eq(' + q + ')').addClass('current');
//                    }
//                }
//            );
//        }, 200);
//    }
//}
//
//function submitLead() {
//    var phone = $('#f-phone').val();
//    var phoneNum = phone.replace(/\D/g, '');
//    if (validateForm()) {
//        if (!isValidAreaCode(phoneNum)) {
//            alert($('#f-phone').data('error'));
//            $('#f-phone').focus();
//            return false;
//        }
//        else {
//            complete = 100;
//            packLead();
//            $('#mobile-form').fadeOut(400, function() {
//                $('#loader h1').html('Quoting...');
//                $('#loader').fadeIn(200, function() {
//                    loadFormResults('Bf-Gq8qS_5GxaciUIqb_LSdt_0nON7kQNBiYX5tYEiWqQ9pY5hc');
//                });
//            });
//        }
//    }
//}
//
//function submitHealthLead() {
//    var phone = $('#f-phone').val();
//    var phoneNum = phone.replace(/\D/g, '');
//    if (validateForm()) {
//        if (!isValidAreaCode(phoneNum)) {
//            alert($('#f-phone').data('error'));
//            $('#f-phone').focus();
//            return false;
//        }
//        else {
//            complete = 100;
//            packHealthLead();
//            $('#mobile-form').fadeOut(400, function() {
//                $('#loader h1').html('Quoting...');
//                $('#loader').fadeIn(200, function() {
//                    loadFormResults('AVtgI7li9EXdbGtNyyp2I0KcSg-w5CdYDU9WvIyM3TDmaqW5j-c');
//                });
//            });
//        }
//    }
//}
//
//function packLead() {
//    var data = {};
//    var incidents = [];
//    data.zip = $('#f-zip').val();
//    $.extend(data, $('#mobile-form #common :input').serializeJSON());
//    data.vehicles = [$('#mobile-form #vehicles :input').serializeJSON()];
//    data.drivers = [$('#mobile-form #drivers :input').serializeJSON()];
//    data.drivers[0].birth_date = '19' + $('#bday-year').val() + '-' + $('#bday-month li.selected').attr('data-value') + '-' + $('#bday-day li.selected').attr('data-value');
//
//    var now = new Date();
//    var lastYear = leadingZero(now.getMonth() + 1) + '/' + (now.getFullYear() - 1);
//    var ticket = {
//        'type': 'ticket',
//        'driver': 0,
//        'incident_date': lastYear,
//        'description': 'Less than 10 MPH over'
//    };
//
//    var accident = {
//        'type': 'accident',
//        'driver': 0,
//        'incident_date': lastYear,
//        'description': 'Hit while stopped',
//        'what_damaged': 'property',
//        'accident_at_fault': 0,
//        'amount_paid': 0,
//        'liability_medical_paid': 0
//    };
//
//    var dui = {
//        'type': 'dui',
//        'driver': 0,
//        'incident_date': lastYear,
//        'dui_state': geo.state_code
//    };
//
//    if ($('#incidents #tickets li.yes.selected').length) {
//        incidents.push(ticket);
//    }
//
//    if ($('#incidents #accidents li.yes.selected').length) {
//        incidents.push(accident);
//    }
//
//    if ($('#incidents #dui li.yes.selected').length) {
//        incidents.push(dui);
//    }
//
//    data.incidents = incidents;
//    data.drivers[0].driver = $('#f-name').val();
//    data.city2 = $('#f-city').val();
//    data.address = $('#f-address').val();
//    data.phone = $('#f-phone').val();
//    data.email = $('#f-email').val();
//
//    var args = [];
//    if (complete == 100) args.push('c');
//    args = args.length ? '?' + args.join('&') : '';
//
//    $.ajax('/js/lead.json' + args + ';Bf-Gq8qS_5GxaciUIqb_LSdt_0nON7kQNBiYX5tYEiWqQ9pY5hc', {
//        contentType: 'application/json',
//        data: $.toJSON(data),
//        processData: false,
//        type: 'POST'
//    });
//}
//
//function packHealthLead() {
//    var data = { primary: {} };
//    data.zip = $('#f-zip').val();
//    $.extend(data, $('#mobile-form #health-fields :input').serializeJSON());
//
//    data.email = $('#f-email').val();
//    data.phone = $('#f-phone').val();
//    data.address = $('#f-address').val();
//    data.county = $('#f-county').val();
//
//    var qle = new Date();
//    qle.setDate(qle.getDate() - 45);
//
//    data.household_income = $('#household-income li.selected').data('value');
//    data.qualifying_life_event = $('#life-events li.selected').data('value');
//    data.qualifying_life_event_date = qle.getFullYear() + '-' + leadingZero(qle.getMonth() + 1) + '-' + leadingZero(qle.getDate());
//
//    data.primary.name = $('#f-name').val();
//    data.primary.gender = $('#gender-selector li.selected').data('value');
//    data.primary.birth_date = '19' + $('#bday-year').val() + '-' + $('#bday-month li.selected').attr('data-value') + '-' + $('#bday-day li.selected').attr('data-value');
//    var feet = parseInt(($('#feet li.selected').data('value') * 12), 10);
//    var inches = $('#inches li.selected').data('value');
//    data.primary.height =  feet + inches;
//    data.primary.weight = $('#weight').val();
//    data.primary.tobacco = 0;
//
//    $.each($('#medical-conditions li'), function(i, v) {
//        if ($(v).data('value')) {
//            var condition = 'major_condition_' + $(v).data('value');
//            data[condition] = $(v).hasClass('selected') ? 1 : 0;
//        }
//    });
//
//    data.currently_insured = $('#insurer li.selected').data('value') != '' ? 1 : 0;
//    data.current_company = $('#insurer li.selected').data('value');
//
//    var args = [];
//    if (complete == 100) args.push('c');
//    args = args.length ? '?' + args.join('&') : '';
//    $.ajax('/js/lead.json' + args + ';5i-J83mhI-bPrXUGTDd8aTP9_3yFjr6VLQ8DJrePGpqG6mxz0EE', {
//        contentType: 'application/json',
//        data: $.toJSON(data),
//        processData: false,
//        type: 'POST'
//    });
//}
//
//function loadFormResults(p) {
//    var d = new Date();
//    $.get('/js/listing.json?' + rand() + ';' + p, { zip: $('#f-zip').val(), lh: d.getHours() }, function(data) {
//        if (data.error) {
//            showError(data.error);
//        }
//        else {
//            $('#units').html(data.html);
//            unlockScreen();
//            setTimeout(function() {
//                $('#loader').fadeOut(200, function() {
//                    $('#results').fadeIn();
//                });
//            }, 2000)
//        }
//    });
//}
//
//function leaveBehind(p) {
//    if (leaveBehindCalled) return;
//    leaveBehindCalled = true;
//    zip = $('#f-zip').val();
//    $('body').addClass('lb');
//    setTimeout(function() {
//        var d = new Date();
//        $.get('/js/listing.json?' + rand() + ';' + p, { zip: $('#f-zip').val(), lh: d.getHours() }, function(data) {
//            if (data.error) {
//                showError(data.error);
//            }
//            else {
//                $.get('/js/home.json?page=home&path=home');
//                $('#title-screen, #zip, #title-content, #form').hide();
//                $('#leave-behind').html(data.html);
//                $('#results').show();
//                leaveBehindCalled = true;
//                unlockScreen();
//            }
//        });
//    }, 2);
//}
//
//function hideLeaveBehind() {
//    if ($('#leave-behind').length) {
//        $('#main-menu').show();
//        $('#main-panel').show();
//        $('#bottom-content').show();
//        $('#easy-form').show();
//        $('#footer').show();
//        $('#leave-behind').hide();
//        $('#f-zipcode').focus().select();
//        $('body').removeClass('lb');
//    }
//}