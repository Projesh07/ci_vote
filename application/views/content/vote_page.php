<style>
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
}
progress:after {
  content: attr(value)'%';
}

    /* footer */
</style>
<script type="text/javascript">

    $(document).ready(function () {

        $(".contentPost").delay(1000).fadeIn(100);


        $("#voting_categories").submit(function () {

            var dvId = $("#dv_id").val();
            var v_column = $('input[name="v_column"]:checked').val();
            var v_data = $('input[name="v_data"]').val();
            var sendData = {"v_column": v_column,"v_data": v_data};

            $.ajax({
                url: "<?= base_url(); ?>voting/voted/" + dvId,
                type: "post",
                data: sendData,
                success: function (data) {
                   
                    var data=JSON.parse(data);
                     console.log(data);
                     for(var key in data){
                       
                        str=data[key].v_column;
                        id="value"+str.replace(' ', '')

                        console.log(id+" id");

                        $("#"+id).val(data[key].v_value);

                            // $('#days').append('<li>' + key + '(' + days[key] + ')</li>');
                        }
                    // $("#box-vote").fadeOut(1000);
                    // $("#value").html()
                    // $("#vote-results").html(data).delay(1000).fadeIn(1000);
                }
            });

            return false;

        })




 function realtime(){

            var dvId = $("#dv_id").val();

            $.ajax({
                url: "<?= base_url(); ?>voting/realtime_result/" + dvId,
                type: "post",
                data: {},
                success: function (data) {
                   
                    var data=JSON.parse(data);
                     for(var key in data){
                       
                        str=data[key].v_column;
                        id="value"+str.replace(' ', '')

                        console.log(id+" id");

                        $("#"+id).val(data[key].v_value);

                        }

                }
            });

 }



 setInterval(realtime, 1000);//time in milliseconds 

    })
</script>
<!-- Vote Start -->
        <?php 
        if($columns !=null){?>
        <?= form_open_multipart('voting/voted/'.$vote->dv_id, array('id' => 'voting_categories'))?>

        <div  class="col-md-4 margin-top-30 contentPost" style="display: none;">
            <div id="box-vote" class="box-vote">

                <div class="box-vote-head"><?= $vote->dv_title?></div>
                <div class="box-vote-content">
                    <input type="hidden" id="dv_id" value="<?= $vote->dv_id; ?>"/>
            <?php //var_dump($columns);  ?>
            <?php foreach($columns as $col): 
                 foreach($col as $key=>$value):
                    // var_dump($col['ci_votting_id']);
                    
                 if($key=='candidate_name'):
                ?>
            <div class="radio">
                <label class="voting_blog">
                <input name="v_column" type="radio" value="<?= $value ?>" checked="checked" >
                <?= $value ?> <span> <progress max="100" value="26" id="value<?= preg_replace("/\s+/","",$value)?>"></progress><br/></span>
                </label>
            </div>
               <?php endif; ?>
              <?php  endforeach;  ?>
           
              <?php  endforeach;  ?>
              <button type="submit" name="votes"  class="btn btn-custom btn-block">Vote Now!</button>
                </div>

            </div>
        </div>
        </form>
    <?php }else{?> <p class="notice error">sorry,there no votes</p>  <?php } ?>
<!-- Vote End -->

<div id="vote-results" style="display:none;"></div>