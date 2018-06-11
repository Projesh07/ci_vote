<style>

.content{
    margin-top:200px;
    margin-bottom:200px;
}

.main-content{
    z-index:-1;
    /*margin-top:20px;*/
    background: white;
    position:relative;
    display:inline-flex;
    width: 100%;  
    height:65px;
    box-shadow: 11px 5px 15px black;
    

}
.progress-bar{
    height:65px;
    background:gray;
    background:linear-gradient(to bottom left, rgb(34, 34, 35), rgb(212, 212, 216));
    width:300px;   
    clip-path: polygon(0 0, 100% 0, 90% 100%, 0% 100%);
}
.img-content{
    border-radius: 50%;
    position: absolute;
    width:73px;
    height:73px;
    left:60px;
    top: -2px;
}
.serial-no{
    position: absolute;
    font-weight:bold;
    font-size: 21px;
    padding: 18px;
    left:5px;
    color:black;
}

.percentage{
    position: absolute;
    right: 60px;
    top: 20px;
    font-size: 18px;
}
.selected{
    transform: scale(1.02,1);
}
.selected-p-var{
   background: linear-gradient(rgb(244, 179, 66),rgb(170, 186, 81));
}
.btn-voting{
    width: 100%;
    position: relative;
    z-index: 1;
    height: 65px;
    margin-top: 20px;
    padding: 0px;
    /*background: white;*/
    background-color:transparent;
    border: none;
}
    /* vote */
    .box-vote {
        background: #fafafa;
        -webkit-box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.18);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.18);
        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.18);
        border-radius: 3px;
        float: right;
        width: 100%;
    }

    .box-vote-head {
        background: #922c39;
        font-size: 20px;
        color: #ffffff;
        float: right;
        padding: 20px;
        font-family: 'Droid Arabic Kufi', sans-serif;
        width: 100%;
    }

    .box-vote-content {
        float: right;
        padding: 20px;
        width: 100%;
    }

    .box-vote-content label {
        font-family: 'Droid Arabic Kufi', sans-serif;
        font-size: 20px;
        color: #5e5e5e;
        font-weight: bold;
    }

    .box-vote-content .radio input[type=radio] {
        margin-top: 10px;
    }

progress {
  text-align: center;
/*     height:65px;
    background:gray;
    background:linear-gradient(to bottom left, rgb(34, 34, 35), rgb(212, 212, 216));
    width:300px;   
    clip-path: polygon(0 0, 100% 0, 90% 100%, 0% 100%);
    background: linear-gradient(rgb(244, 179, 66),rgb(170, 186, 81));*/
}
progress:after {
  content: attr(value)'%';
}

    /* footer */
</style>




        <?php 
        // var_dump($columns);die;
       // if($columns !=null){?>
 
        <div  class="col-md-12 margin-top-30 contentPost" style="display: none;">
            <div id="box-vote" class="box-vote">

                <div class="box-vote-head"><?php if(isset($vote)){
                    echo $vote->dv_title;
                } ?></div>
                <div class="box-vote-content">
                    <?php if(isset($vote)){ ?>
                    <input type="hidden" id="dv_id" value="<?= $vote->dv_id; ?>"/>
                <?php } ?>
                    <div id='vote-section'>
            <?php  $first=1;  
                echo $html;
                    ?>

              </div>
                </div>

            </div>
        </div>
  
    
<!-- Vote End -->

<div id="vote-results" style="display:none;"></div>

<script type="text/javascript">



        


        $(document).on('click','.btn-voting',function () {

            var dvId = $("#dv_id").val();
            //var v_column = $('input[name="v_column"]:checked').val();
            var v_column = $(this).data('value');
           // var v_data = $('input[name="v_data"]').val();
            var v_data = $(this).data('column');
            var img_val=$(this).data('img');
            var sendData = {"v_column": v_column,"v_data": v_data,"can_image":img_val};
             var first=1
            $.ajax({
                url: "<?= base_url(); ?>voting/voted/" + dvId,
                type: "post",
                data: sendData,
                success: function (data) {
                   
                    // var data=JSON.parse(data);
                     console.log(data);
                     $('#vote-section').html(data);
                     // for(var key in data.data){
                       
                     //    str=data.data[key].v_column;
                     //    id="value"+str.replace(' ', '')

                     //    // console.log(id+" id");

                     //    $("#"+id).width(data.data[key].data_percentage);
                     //     divid="percentage-"+str.replace(' ', '')
                     //    $("#"+divid).html(data.data[key].data_percentage);

                     //    serialno='serial-no'+str.replace(' ', '')


                     //    $("#"+serialno).html(data.data[key].v_value);

                     //    btn='b'+str.replace(' ', '')

                     //    btn2='b'+data.max[0].v_column.replace(' ', '')
                     //    console.log(btn2);
                     //        if(btn==btn2){
                     //         btn='b'+str.replace(' ', '')
                     //         $(".btn-voting").removeClass("selected");
                     //         $("#"+btn).addClass("selected");
                      
                     //    }
    
                     //    }
    
                }
            });

            return false;

        })




 function realtime(){

            var dvId = $("#dv_id").val();
            var first=1
            $.ajax({
                url: "<?= base_url(); ?>voting/realtime_result/" + dvId,
                type: "post",
                data: {},
                success: function (data) {

         $('#vote-section').html(data);
                   
                    // var data=JSON.parse(data);
                    // console.log(data.data);
                    //  for(var key in data.data){
                       
                    //     str=data.data[key].v_column;
                    //     id="value"+str.replace(' ', '')

                    //     divid="percentage-"+str.replace(' ', '')
                    //     $("#"+id).width(data.data[key].data_percentage);
                    //     $("#"+divid).html(data.data[key].data_percentage);
                    //     serialno='serial-no'+data.data[key].v_column
                    //     $("#"+serialno).html(data.data[key].v_value);

                    //         if(first==1){
                    //         btn='b'+data.data[key].v_column
                    //          $(".btn-voting").removeClass("selected");
                    //          $("#"+btn).addClass("selected");
                    //          new_val=data.data[key].data_percentage;
                    //          first=2
                    //     }
                    //     }

                }
            });

 }


$(".contentPost").delay(1000).fadeIn(100);


// setInterval(realtime, 1000);//time in milliseconds 

    // })
</script>
<!-- Vote Start -->