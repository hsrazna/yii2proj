
$(document).ready(function(){
    //RESPONSIVEUI.responsiveTabs();
    // alert(1);

/*dates*/
    $('#datepicker, #datepicker2, #datepicker3, #datepicker4, #datepicker5, #datepicker6').datepicker({
        pickTime: false, language: 'ru'
    });

    $(".startdate").change(function (e) {
        var time1 = new Date($(this).val().split(".").reverse().join("-"));
        var time2 = new Date($(".finishdate").val().split(".").reverse().join("-"));
        //alert(time1.getTime());
        if(time1.getTime()>time2.getTime() && $(".finishdate").val()!=''){
            $(".finishdate").val($(this).val());
        }
    });
    $(".finishdate").change(function (e) {
        var time1 = new Date($(this).val().split(".").reverse().join("-"));
        var time2 = new Date($(".startdate").val().split(".").reverse().join("-"));
        if(time2.getTime()>time1.getTime() && $(".startdate").val()!=''){
            $(".startdate").val($(this).val());
        }
    });
/*dates*/

/*pagination with filter*/
    $('.az-activity, .az-eventtype').click(function(){
        $(this).next('.az-open').slideToggle('slow');
        $(this).find('.fa-angle-double-down').toggleClass('az-disp-none');
        $(this).find('.fa-angle-double-up').toggleClass('az-disp-none');
    });
/*pagination with filter*/

/*functions*/
    var az_posTop = -1;
    var temp;

    function event_table(temp){
        //var begin = z*5;
        //var end = begin+5;
        var k;
        //temp.forE
        var strtemp = '';
        for (i=0; i<temp.length; i++){
            if(temp[i].id_role != 0){
            strtemp += '<tr><td>' + (i+1) + 
                '</td><td><a href="#activist" rel="modal">' + temp[i].user.middlename + ' ' +
                temp[i].user.uname + ' ' + temp[i].user.lastname +
                '</a></td><td>' + temp[i].role.uname +
                '</td><td>' + temp[i].user.course +
                '</td><td>' + temp[i].user.id_department +
                '</td></tr>';
            }
        }
        $('#eventtable').html(strtemp);
    }

    function f_event(temp){
        //alert(temp.startdate);
        
        id_event2 = temp.id;
        id_event3 = temp.id;
        $('#usersadd .an-exit a').attr('dataId', id_event2);
        $('#activeadd .an-exit a').attr('dataId', id_event2);
        $('#changeEvent .an-exit a').attr('dataId', id_event2);
        $('#event0').text(temp.uname);
        $('#changeEvent input[name="AddEvent[uname]"]').val(temp.uname);
        $('#event1').text(temp.eventlevel.uname);
        $('#changeEvent select[name="AddEvent[id_eventlevel]"]').val(temp.eventlevel.id);
        
        $('#event2').text(
            temp.iCoordinator.uname.slice(0,1)+'.'+
            temp.iCoordinator.lastname.slice(0,1)+'.'+
            temp.iCoordinator.middlename
            );
        coordd = temp.iCoordinator.middlename+' '+
            temp.iCoordinator.uname+' '+
            temp.iCoordinator.lastname;
        $('#findcoord2').val(coordd);
        coordd_id = temp.iCoordinator.id;

        var datetemp = new Date(temp.startdate);//.format("dd.mm.yyyy");
        // alert(asdfd.toLocaleDateString());
        $('#event3').text(datetemp.toLocaleDateString());
        $('#changeEvent input[name="AddEvent[startdate]"]').val(datetemp.toLocaleDateString());
        
        var strtemp = '';
        searchingusers = new Array();
        usersin = new Array();
        
        var is_registr = false;
        temp.registrator.forEach(function(item, j){
            searchingusers.push(item.id);
            usersin.push(item.id);
            strtemp +=  (j==0)?(
                        item.uname.slice(0,1) + '.' +
                        item.lastname.slice(0,1) + '.' +
                        item.middlename
                        ):(
                        ', ' + 
                        item.uname.slice(0,1) + '.' +
                        item.lastname.slice(0,1) + '.' +
                        item.middlename
                        );
            if(my_id == item.id){is_registr = true;}
        });



        $('#event4').text(strtemp);

        var strtemp = '';

        for(var i=0; i<temp.registrator.length; i++){
                strtemp2 = temp.registrator[i].middlename + ' ' + temp.registrator[i].uname + ' ' + temp.registrator[i].lastname;
                strtemp2 = strtemp2.length > 25 ? strtemp2.slice(0, 25) + '...' : strtemp2;
                strtemp += ' <div class="col-md-6 col-sm-6 col-xs-12"><ul class="ah_uplist"><li><span class="fa fa-times ah_uplist-span" aria-hidden="true" dataId="'+
                        temp.registrator[i].id +'"></span>' + 
                        strtemp2 + '</li></ul></div>';
        }

        $('#usersadded').html(strtemp);

        var datetemp = new Date(temp.finishdate);
        $('#event5').text(datetemp.toLocaleDateString());
        $('#changeEvent input[name="AddEvent[finishdate]"]').val(datetemp.toLocaleDateString());
        strtemp = '';
            temp.activity.forEach(function(item, j){
                strtemp +=  (j==0)?(item.uname):(', ' + item.uname);
                $('#changeEvent input[type="checkbox"][name="AddEvent[id_activity'+ item.id +']"]').attr('checked', 'checked');
            });
        $('#event6').text(strtemp);
        $('#event7').text(temp.location);
        $('#changeEvent input[name="AddEvent[location]"').val(temp.location);
        
        strtemp = '';
        temp.eventtype.forEach(function(item, j){
            strtemp +=  (j==0)?(item.uname):(', ' + item.uname);
            $('#changeEvent input[type="checkbox"][name="AddEvent[id_eventtype'+ item.id +']"]').attr('checked', 'checked');
        });
        $('#event8').text(strtemp);
        // alert(temp.id_eventcomp);
        if(temp.id_eventcomp == 1){
            $('#changeEvent input[type="checkbox"][name="AddEvent[id_eventcomp]"]').attr('checked', 'checked');
        }
        
        $('#event9').text(temp.comment);
        $('#changeEvent textarea[name="AddEvent[comment]"]').text(temp.comment);
        var k;
        var strtemp = '';
        var strtemp3 = '';
        var strtemp4 = '';
        for (i=0; i<temp.roles.length; i++){
            if(temp.roles[i].id_role != 0){
            searchingusers2.push(temp.roles[i].user.id);
            usersin2.push(temp.roles[i].user.id);
            strtemp += '<tr><td>' + (i+1) + 
                '</td><td><a dataId="' + temp.roles[i].user.id + '" href="#activist" rel="modal">' + temp.roles[i].user.middlename + ' ' +
                temp.roles[i].user.uname + ' ' + temp.roles[i].user.lastname +
                '</a></td><td>' + temp.roles[i].role.uname +
                '</td><td>' + temp.roles[i].user.course +
                '</td><td>' + temp.roles[i].user.department.shortname + ':'
                + temp.roles[i].user.department.unit.shortname +
                '</td></tr>';

                strtemp4 = temp.roles[i].user.middlename + ' ' + temp.roles[i].user.uname + ' ' + temp.roles[i].user.lastname;
                strtemp4 = strtemp4.length > 25 ? strtemp4.slice(0, 25) + '...' : strtemp4;
                strtemp3 += ' <div class="col-md-6 col-sm-6 col-xs-12"><ul class="ah_uplist"><li><span class="fa fa-times ah_uplist-span" aria-hidden="true" dataId="'+
                        temp.roles[i].user.id +'"></span>' + 
                        strtemp4 + '</li></ul></div>';
            }
        }
        $('#eventtable').html(strtemp);
        $('#activeadded').html(strtemp3);

        // alert(my_id+'/'+temp.iCoordinator.id);
        $('#event_2').css('display', 'none');
        $('#event_3').css('display', 'none');
        $('#event_4').css('display', 'none');
        $('#event_5').css('display', 'none');
        if(is_registr){
            $('#event_5').css('display', 'inline-block');
        }
        if(my_id == temp.iCoordinator.id || typeof(superuser) !== 'undefined'){
            $('#event_2').css('display', 'inline-block');
            $('#event_3').css('display', 'inline-block');
            $('#event_4').css('display', 'inline-block');
            $('#event_5').css('display', 'inline-block');
        }




    }

    function f_user(temp){
        //alert(1);
        $('#user1').text(temp.middlename + ' ' + temp.uname + ' ' + temp.lastname);
        $('#user2').text('('+temp.birthday+')');
        $('#user3').text(temp.department.uname + ', ' + temp.department.unit.uname);
        $('#user4').text(' +7(' + temp.phonenum.slice(0,3)
                    + ')' + temp.phonenum.slice(2,5)
                    + '-' + temp.phonenum.slice(5,7)
                    + '-' + temp.phonenum.slice(7,9));
        var strtemp = '<span id="user5">';
        temp.groups.forEach(function(item, j){
            strtemp +=  (j==(temp.groups.length-1))?(
                '<span class="az-style1"><a dataId="' + item.id + '" href="#group" rel="modal">'
                + item.uname + '</a></span>'
                        ):(
                '<span class="az-style1"><a dataId="' + item.id + '"  href="#group" rel="modal">'
                + item.uname + '</a>, </span>'
                        );
        });
        strtemp += '</span>'
        $('#user5').html(strtemp);
        //alert(1);
        var k;
        strtemp = '';
        for (i=0; i<temp.events.length; i++){
            //alert(temp.events[i].event.id);
            if(temp.events[i].id_role != 0){
            strtemp += '<tr><td>' + (i+1) + 
                '</td><td>' + temp.events[i].event.finishdate + '<br/>' + temp.events[i].event.startdate +
                '</td><td><a dataId="' + temp.events[i].event.id + '" href="#event" rel="modal">' + temp.events[i].event.uname +
                '</a></td><td>' + temp.events[i].role.uname +
                '</td><td>' + temp.events[i].role.mark +
                '</td></tr>';
            }
            //alert(strtemp);
            
        }
        $('#usertable').html(strtemp);
    }

    function f_group(temp){
        //alert(temp.uname);
        //alert(temp.startdate);
        $('#group0').text(temp.uname);
        $('#group1').text(temp.users.length);
        id_group2 = temp.id;
        id_group3 = temp.id;
        $('#usersadd .an-exit a').attr('dataId', id_group2);
        var k;
        var strtemp = '';
        searchingusers = new Array();
        usersin = new Array();
        for (i=0; i<temp.users.length; i++){
            //alert(temp.users[i].id_role);
            //if(temp.users[i].id_role != 0){
            searchingusers.push(temp.users[i].id);
            usersin.push(temp.users[i].id);
            strtemp += '<tr><td>' + (i+1) + 
                '</td><td><a dataId="' + temp.users[i].id + '" href="#activist" rel="modal">' + temp.users[i].middlename + ' ' +
                temp.users[i].uname + ' ' + temp.users[i].lastname +
                '</a></td><td>' + temp.users[i].course +
                '</td><td>' + temp.users[i].id_department +
                '</td></tr>';
            //}
        }
        //alert(strtemp);
        // alert(searchingusers);
        $('#grouptable').html(strtemp);

        var strtemp = '';

        for(var i=0; i<temp.users.length; i++){
                strtemp2 = temp.users[i].middlename + ' ' + temp.users[i].uname + ' ' + temp.users[i].lastname;
                strtemp2 = strtemp2.length > 25 ? strtemp2.slice(0, 25) + '...' : strtemp2;
                strtemp += ' <div class="col-md-6 col-sm-6 col-xs-12"><ul class="ah_uplist"><li><span class="fa fa-times ah_uplist-span" aria-hidden="true" dataId="'+
                        temp.users[i].id +'"></span>' + 
                        strtemp2 + '</li></ul></div>';
        }

        $('#usersadded').html(strtemp);
    }

    function f_finduser(temp, tagid){

        var strtemp = '';
        for (i=0; i<temp.length; i++){
            strtemp += '<option value="' + 
            temp[i].id + '">' +
            temp[i].middlename + ' ' +
            temp[i].uname + ' ' +
            temp[i].lastname + ' ' + 
            '</option>';
        }
        // alert(strtemp);
        // alert(tagid);

            
        // }

        $(tagid).html(strtemp);
        if(tagid=='#selectcoord2'){
            $('#selectcoord2').val(coordd_id);
            // alert(coordd_id);
        }
    }

    function f_findsz(temp, tagid){

        var strtemp = '';
        for (i=0; i<temp.length; i++){
            strtemp += '<option value="' + 
            temp[i].id + '">' +
            temp[i].uname + ' ' +
            '</option>';
        }
        // alert(strtemp);
        // alert(tagid);

            
        // }

        $(tagid).html(strtemp);
    }

    function f_fillsz(temp){
        // alert(temp[0].header);
        $('#szid').val(temp.id);
        $('#szheader').val(temp.header);
        $('#sztitle').val(temp.title);
        $('#szcontent').val(temp.content);
        var datetemp = new Date(temp.date);
        $('#szdate').val(datetemp.toLocaleDateString());
        $('#szparaph').val(temp.paraph);
    }
/*functions*/

/*popups*/

    var prevpop = new Array();
    var prevpop_id = new Array();

    $('body').on('click', 'a[rel=modal]', function(e) {
        // alert(1);

        if ($('.az-fixed').hasClass('az-fixed2')){
            $('#mask, .window').hide();
            $('.window').hide();
            $('.az-fixed').removeClass('az-fixed2');
        }
        e.preventDefault();
        var id = $(this).attr('href');

        // alert(id);
        var tempdata = -1;
        if (id == '#event' || id == '#activist' || id == '#group'){
            if(!$(this).hasClass('an-exit__krest')){
                prevpop.push(id);
                prevpop_id.push($(this).attr('dataid'));
                if(prevpop.length >= 2){
                    $(id + ' .an-exit__krest').attr('href', prevpop[prevpop.length-2]);
                    $(id + ' .an-exit__krest').attr('dataid', prevpop_id[prevpop.length-2]);
                    $(id + ' .an-exit__krest').attr('rel', 'modal');
                } else {
                    $(id + ' .an-exit__krest').removeAttr('href');
                    $(id + ' .an-exit__krest').removeAttr('dataid');
                    $(id + ' .an-exit__krest').attr('rel','');
                }
            } else if($(this).hasClass('an-exit__krest2')){
                prevpop.pop();
                prevpop_id.pop();
                if(prevpop.length >= 2){
                    $(id + ' .an-exit__krest').attr('href', prevpop[prevpop.length-2]);
                    $(id + ' .an-exit__krest').attr('dataid', prevpop_id[prevpop.length-2]);
                    $(id + ' .an-exit__krest').attr('rel', 'modal');
                } else {
                    $(id + ' .an-exit__krest').removeAttr('href');
                    $(id + ' .an-exit__krest').removeAttr('dataid');
                    $(id + ' .an-exit__krest').attr('rel','');
                }

            }
            // alert(prevpop.length);
            tempdata = Number($(this).attr('dataid'));
            $('#usersadd .an-exit__krest').attr('href', id);
            $('#activeadd .an-exit__krest').attr('href', id);

        //alert(tempdata);
        } else if(id == '#usersadd' || id == '#activeadd'){
            senddel = new Array();
            send = new Array();
            if(id == '#usersadd'){
                $('#usersadd input[name="status"]').val($(this).attr('data-status'));
            }
            // searchingusers = new Array();
            // usersin = new Array();
            // searchingusers = new Array();
            // usersin
            // tempdata = $('#finduser').val();
        } else if(id=='#changeEvent'){
            tempdata = coordd.split(' ', 3);
            // alert(tempdata);
        }
        // alert(tempdata);
        if (id == '#event' || id == '#activist' || id == '#group' || id == '#usersadd' || id == '#addEvent' || id == '#activeadd' || id == '#changeEvent' || id == '#szopen'){
            // alert(1);
            var controllername = (id!='#addEvent'&&id!='#activeadd'&&id!='#changeEvent')?id.slice(1):(id=='#changeEvent')?'finduser':'usersadd';
            var is_coord;
            if(id == '#addEvent' || id == '#changeEvent'){
                is_coord = true;
            }
            // alert(id_event2);
            // alert(is_coord);
            // alert(controllername);
            $.ajax({
                url: "/ajax/" + controllername,
                type: 'get',
                data: {
                    data : tempdata,
                    is_coord : is_coord,
                    id : id_event2
                },
                success: function (data) {
                    // data = '('+data+')';
                    // alert(JSON.stringify(data));
                    temp = eval(data);
                    // alert(temp);
                    if(id == '#event'){f_event(temp.query);}
                    else if(id == '#activist'){f_user(temp.query);}
                    else if(id == '#group'){f_group(temp.query);}
                    else if(id == '#usersadd'){f_finduser(temp.query, '#selectuser');}
                    else if(id == '#addEvent'){f_finduser(temp.query, '#selectcoord');}
                    else if(id == '#changeEvent'){f_finduser(temp.query, '#selectcoord2');}
                    else if(id == '#activeadd'){f_finduser(temp.query, '#selectactive');}
                    else if(id == '#szopen'){f_findsz(temp.query, '#selectsz');}

                    // else if(id == '#addEvent'){f_finduser(temp.query, '#selectcoord');}

                    // alert(1);
                    //$('#event9').text(data);
                    //alert(data);
                    // alert(2);
                }
            });
        }

        var maskHeight = $(document).height();
        var maskWidth = $(window).width() + 30;
        $('#mask').css({'width':maskWidth,'height':maskHeight});
        $('#mask').fadeTo("slow",0.8); 
        var winH = $(window).height();
        var winW = $(window).width();
        if (az_posTop == -1){
            az_posTop = (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;
        }
        $(id).css('top', 30);

        $(id).css('left', winW/2-$(id).width()/2);
        $(id).fadeIn(500);
        $('.az-fixed').addClass('az-fixed2');
        $('.az-fixed2').css('top',  -az_posTop);
        $(window).scrollTop(0);
    });

    $('#mask').click(function(){
        prevpop = new Array();
        prevpop_id = new Array();
        if(is_selectuseraddbtn_clicked){
            location.href = location.href;
        }
    });

    $('#mask, .an-exit__krest').click(function () {
        $('#mask').hide();
        $('.window').hide();
        $('.az-fixed').attr('style', '');
        $('.az-fixed').removeClass('az-fixed2');
        $(document).scrollTop(az_posTop);
        az_posTop = -1;
    }); 

    $('.an-exit__krest2').click(function () {
        if(prevpop.length == 1){
            prevpop.pop();
            prevpop_id.pop();
            if(is_selectuseraddbtn_clicked){
                location.href = location.href;
            }
        }
    });

   function cleanTnakns(form){
        $('input[type="text"]').removeClass("error-input");
        $("input[type=text], textarea").val("");
        $('.window').hide();
        $('a[href=#thanks]').trigger('click');
        
    }

/*popups*/

/*online activist searching*/
    var id_event2;
    var id_group2;
    var searchingusers = new Array();
    var usersin = new Array();
    var send = new Array();
    var delnum = new Array();
    var senddel = new Array();


    function sortNumber(a,b) {
        return a - b;
    }

    function inArray(num, arr){
        for(var i=0; i<arr.length; i++){
            if(arr[i] == num){return true;}
        }
        return false;
    }

    function union_arr(arr1, arr2) {
        delnum = new Array();
        var comp = true;
        for(var i=0; i<arr2.length; i++){
            comp = true;
            for(var j=0; j<arr1.length; j++){
                if (arr1[j] == arr2[i]){
                    comp = false;
                }
            }
            if(comp){
                arr1.push(arr2[i]);
                if(!inArray(arr2[i], senddel)){
                    send.push(arr2[i]);
                }
            } else{
                delnum.push(arr2[i]);
            }
        }
        for(var i=0; i<arr2.length; i++){
            for(var j=0; j<senddel.length; j++){
                if (senddel[j] == arr2[i]){
                    senddel.splice(j,1);
                }
            }
        }
        return arr1;
    }

    
    $('#finduser').keyup(function(e) {
        var val = $('#finduser').val();
        var fio = val.split(' ', 3);
        $.ajax({
            url: "/ajax/finduser",
            type: 'get',
            data: {
                data : fio
            },
            success: function (data) {
                temp = eval(data);
                f_finduser(temp.query, '#selectuser');

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
    });
    $('#selectuserbtn').click(function(e) {
        var val = $('#selectuser').val();
        searchingusers = union_arr(searchingusers, val);
        
        str = '';
        for(var i=0; i<val.length; i++){
            if(!inArray(val[i], delnum)){
                strtemp = $('#selectuser option[value="' + val[i] + '"]').text();
                strtemp = strtemp.length > 25 ? strtemp.slice(0, 25) + '...' : strtemp;
                str += ' <div class="col-md-6 col-sm-6 col-xs-12"><ul class="ah_uplist"><li><span class="fa fa-times ah_uplist-span" aria-hidden="true" dataId="'+
                val[i] + '"></span>' + 
                        strtemp + '</li></ul></div>';
            }
        }
        $('#usersadded').html($('#usersadded').html() + str);
        // alert(send);
        return false;
    });

    $('body').on('click','#usersadd .ah_uplist-span', function(){
        temp_id = Number($(this).attr('dataId'));
        for(var i=0; i<searchingusers.length; i++){
            if(searchingusers[i] == temp_id){
                searchingusers.splice(i, 1);
                $(this).parents('.ah_uplist').parent().remove();
            }
        }
        for(var i1=0; i1<send.length; i1++){
            if(send[i1] == temp_id){
                send.splice(i1, 1);
            }
        }
        for(var i2=0; i2<usersin.length; i2++){
            if(usersin[i2] == temp_id){
                senddel.push(temp_id);
            }
        }
        
    });

    var is_selectuseraddbtn_clicked = false;
    $('#selectuseraddbtn').click(function(){
        var temp = $('#usersadd input[name="status"]').val();
        $.ajax({
            url: "/ajax/" + temp,
            type: 'get',
            data: {
                data : send,
                id : temp=="usersadd2"?id_group2:temp=="regadd"?id_event2:'',
                del : senddel
            },
            success: function () {
                is_selectuseraddbtn_clicked = true;
                $('#usersadd .an-exit__krest').trigger('click');
                // alert(1);
                //location.href = location.href;
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
        return false;
    });
/*online activist searching*/

/*change group*/
    var id_group3;

    $('#group3').click(function(){
        $('#changeGroup .an-exit a').attr('dataId', id_group3);
        $('#changeGroup [name="AddGroup[id]"]').val(id_group3);
    });

    $('#group4').click(function(){
        $.ajax({
                url: "/ajax/groupremove",
                type: 'get',
                data: {
                    id : id_group3,
                },
                success: function () {
                    location.href = location.href;
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                  }
            });
            return false;
    });
/*change group*/

/*add new event*/
    $('#findcoord').keyup(function(e) {
        var val = $('#findcoord').val();
        var fio = val.split(' ', 3);
        $.ajax({
            url: "/ajax/finduser",
            type: 'get',
            data: {
                data : fio,
                is_coord : true
            },
            success: function (data) {
                temp = eval(data);
                f_finduser(temp.query, '#selectcoord');

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
    });
    $('#findcoord2').keyup(function(e) {
        var val = $('#findcoord2').val();
        var fio = val.split(' ', 3);
        $.ajax({
            url: "/ajax/finduser",
            type: 'get',
            data: {
                data : fio,
                is_coord : true
            },
            success: function (data) {
                temp = eval(data);
                f_finduser(temp.query, '#selectcoord2');

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
    });
    $('.form12').submit(function(e){
        var temp = $(this).find('input[name="AddEvent[uname]"]');
        if(temp.val() == ''){
            temp.addClass('error-input');
            temp.focus();
            return false;
        }
        temp = $(this).find('input[name="AddEvent[startdate]"]');
        if(temp.val() == ''){
            temp.addClass('error-input');
            temp.focus();
            return false;
        }
        temp = $(this).find('input[name="AddEvent[finishdate]"]');
        if(temp.val() == ''){
            temp.addClass('error-input');
            temp.focus();
            return false;
        }

        temp = $(this).find('select[name="AddEvent[id_coordinator]"]');
        if(temp.length>0){
        // alert(temp.val());
            if(temp.val() == null){
                temp.prev().addClass('error-input');
                temp.prev().focus();
                return false;
            }
        }
    });
    $('.form12 input[name="AddEvent[uname]"], .form12 input[name="AddEvent[startdate]"], .form12 input[name="AddEvent[finishdate]"]').blur(function(){
        $(this).removeClass('error-input');
    });
/*add new event*/

/*add activist*/
    
    var status = new Array();
    var searchingusers2 = new Array();
    var usersin2 = new Array();
    
    function union_arr2(arr1, num1) {
        delnum = new Array();
        var comp = true;
        // for(var i=0; i<arr2.length; i++){
            // comp = true;
            for(var j=0; j<arr1.length; j++){
                if (arr1[j] == num1){
                    comp = false;
                }
            }
            if(comp){
                arr1.push(num1);
                if(!inArray(num1, senddel)){
                    send.push(num1);
                    status.push($('select[name="id_status"]').val());
                    // status.push()
                }
            } else{
                delnum.push(num1);
            }
        // }
        // for(var i=0; i<arr2.length; i++){
            for(var j=0; j<senddel.length; j++){
                if (senddel[j] == num1){
                    senddel.splice(j,1);
                }
            }
        // }
        return arr1;
    }

    $('#findactive').keyup(function(e) {
        var val = $('#findactive').val();
        var fio = val.split(' ', 3);
        // alert(id_event2);
        $.ajax({
            url: "/ajax/finduser",
            type: 'get',
            data: {
                data : fio,
                id : id_event2
            },
            success: function (data) {
                // alert(data);
                temp = eval(data);

                f_finduser(temp.query, '#selectactive');

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
    });

    $('#selectactivebtn').click(function(e) {
        var val = $('#selectactive').val();
        // alert(send);
        searchingusers2 = union_arr2(searchingusers2, val);
        // alert(val);
        // alert(send);
        str = '';
        // for(var i=0; i<val.length; i++){
            if(!inArray(val, delnum)){
                var strtemp = $('#selectactive option[value="' + val + '"]').text();
                strtemp = strtemp.length > 25 ? strtemp.slice(0, 25) + '...' : strtemp;
                str += ' <div class="col-md-6 col-sm-6 col-xs-12"><ul class="ah_uplist"><li><span class="fa fa-times ah_uplist-span" aria-hidden="true" dataId="'+
                val + '"></span>' + 
                        strtemp + '</li></ul></div>';
            }
        // }
        $('#activeadded').html($('#activeadded').html() + str);
        // alert(send);
        // alert(status);
        return false;
    });
    $('body').on('click','#activeadd .ah_uplist-span', function(){
        temp_id = Number($(this).attr('dataId'));
        for(var i=0; i<searchingusers2.length; i++){
            if(searchingusers2[i] == temp_id){
                searchingusers2.splice(i, 1);
                $(this).parents('.ah_uplist').parent().remove();
            }
        }
        for(var i1=0; i1<send.length; i1++){
            if(send[i1] == temp_id){
                send.splice(i1, 1);
                status.splice(i1, 1);
            }
        }
        for(var i2=0; i2<usersin2.length; i2++){
            if(usersin2[i2] == temp_id){
                senddel.push(temp_id);
            }
        }
        
    });
    $('#selectactiveaddbtn').click(function(){
        // var temp = $('#activeadd input[name="status"]').val();
        $.ajax({
            url: "/ajax/activeadd",
            type: 'get',
            data: {
                data : send,
                id : id_event2,
                del : senddel,
                role : status
            },
            success: function () {
                // alert(1);
                //location.href = location.href;
                is_selectuseraddbtn_clicked = true;
                $('#activeadd .an-exit__krest').trigger('click');
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
        return false;
    });
/*add activist*/

/*change event*/
    var coordd;
    var coordd_id;
    var id_event3;

    $('#event_3').click(function(){
        $('#changeEvent .an-exit a').attr('dataId', id_event3);
        $('#changeEvent [name="AddEvent[id]"]').val(id_event3);
    });

    $('#event_4').click(function(){
        // alert(id_event3);
        $.ajax({
                url: "/ajax/eventremove",
                type: 'get',
                data: {
                    id : id_event3,
                },
                success: function (data) {
                    // alert(data);
                    location.href = location.href;
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                  }
            });
            return false;
    });
/*change event*/

/*memo*/
    $('#findsz').keyup(function(e) {
        var val = $('#findsz').val();
        var szname = val.split(' ', 3);
        // alert(id_event2);
        $.ajax({
            url: "/ajax/findsz",
            type: 'get',
            data: {
                data : szname,
            },
            success: function (data) {
                // alert(JSON.stringify(data));
                temp = eval(data);
                f_findsz(temp.query, '#selectsz');

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
    });

    $('#selectszbtn').click(function(){
        var id = $('#szopen #selectsz').val();
        $.ajax({
            url: "/ajax/findszbyid",
            type: 'get',
            data: {
                id : id,
            },
            success: function (data) {
                // alert(JSON.stringify(data));
                temp = eval(data);
                f_fillsz(temp.query[0]);
                $('#szopen .an-exit__krest').trigger('click');
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
        
        return false;
    });

    $('#sznew').click(function(){
        $('#szid').val(-1);
        $('#szheader').val('');
        $('#sztitle').val('');
        $('#szcontent').val('');
        $('#szdate').val('');
        $('#szparaph').val('');
        return false;
    });

    $('#szsave').click(function(){

        var data = {
            id : $('#szid').val(),
            header : $('#szheader').val(),
            title : $('#sztitle').val(),
            content : $('#szcontent').val(),
            date : $('#szdate').val(),
            paraph : $('#szparaph').val(),
        }
        $.ajax({
            url: "/ajax/savesz",
            type: 'get',
            data: {
                data : data,
            },
            success: function (data) {
                alert(data);
                // alert(JSON.stringify(data));
                // temp = eval(data);
                // f_fillsz(temp.query[0]);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
              }
        });
        return false;
    });
/*memo*/
});

