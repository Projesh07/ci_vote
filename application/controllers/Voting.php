<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/* @property voting_counter_model $voting_counter */
class Voting extends Front_end
{

    function __construct()
    {

        parent::__construct();
        $this->load->helper('globalfunction_helper');
        $this->load->library('session');
        $this->load->model('voting_counter_model', 'voting_counter');
    }

    public function index()
    {
        $this->vote_page();
    }

    /**
     *  display all categories of voting in frontend.
     */
    public function vote_page()
    {
        
        // $data = $this->voting_counter->get_all_columns_active($data['vote']->dv_id);
        // $data['columns'] = array_filter($columns);

        $data['vote'] = $this->voting_counter->get_one_active();

        if(isset($data['vote'])){

        $data= $this->voting_counter->result($data['vote']->dv_id);
                    $str_val='';


                $first=1;
                foreach ($data['data'] as $val) {

                    if($first==1){

                        $selected='selected';
                        $first=null;
                     }else{
                          $selected='';
                     }
                        

                   $str_val .='<button class="btn-voting '.$selected.'" id="b'.preg_replace("/\s+/","",$val->v_column).'" data-value="'.$val->v_column.'" data-column="'.$val->v_column.'" data-img="'.$val->v_image.'">
                  <div class="main-content">
                      <div class="progress-bar '.$selected.'-p-var" style="width:'.$val->data_percentage.'" id="value'.preg_replace("/\s+/","",$val->v_column).'" ></div>
                      <div class="serial-no" id="serial-no'.preg_replace("/\s+/","",$val->v_column).'"> '.$val->v_value.'
                        </div> 
                        <div><img class="img-content" src="'.base_url().'uploads/'.$val->v_image.'" alt="Fjords" /> <!--width="60" height="60"--></div>
                      <div class="percentage" id="percentage-'. preg_replace("/\s+/","",$val->v_column).'">'.$val->data_percentage.'</div>
                  </div>
          </button>';
                  
               }

               // var_dump($str_val);die();
        $data['vote'] = $this->voting_counter->get_one_active();
        $data['html']=$str_val;
                }else{
                  $data['html']='There is no active vote yet';
                }
        $this->view('content/vote_page', $data);
    }

    /**
     * This function to vote
     * @param integer $id
     */
    public function voted($id)
    {

        $ip = $this->input->ip_address();
        $v_column = $this->input->post('v_column');
        
        if (!empty($v_column)) {
            $found_ip = $this->voting_counter->check_ip($id, $ip);

            // var_dump(!$found_ip);die;

            $message='Already voted';
            // if ($found_ip) {
                $this->voting_counter->add_vote($id, $ip);
                $message='';
            // }
                // $data['result'] = $this->voting_counter->result($id);
                // $data['rows'] = $this->voting_counter->getNumVoting($id);
                // var_dump($data);die;
                // $this->view('content/vote_result_current', $data);
            // } else {
                // $data['result'] = $this->voting_counter->result($id);
                // $data['rows'] = $this->voting_counter->getNumVoting($id);
                // var_dump($id);die;
                $data= $this->voting_counter->result($id);

                // var_dump($data);die;

               
               // var_dump($data['data']);die(); 
                $str_val='<div>'.$message.'</div>';

                $first=1;
                foreach ($data['data'] as $val) {

                    if($first==1){

                        $selected='selected';
                        $first=null;
                     }else{
                          $selected='';
                     }
                        

                   $str_val .='<button class="btn-voting '.$selected.'" id="b'.preg_replace("/\s+/","",$val->v_column).'" data-value="'.$val->v_column.'" data-column="'.$val->v_column.'" data-img="'.$val->v_image.'">
                  <div class="main-content">
                      <div class="progress-bar '.$selected.'-p-var" style="width:'.$val->data_percentage.'" id="value'.preg_replace("/\s+/","",$val->v_column).'" ></div>
                      <div class="serial-no" id="serial-no'.preg_replace("/\s+/","",$val->v_column).'"> '.$val->v_value.'
                        </div> 
                        <div><img class="img-content" src="'.base_url().'uploads/'.$val->v_image.'" alt="Fjords" /> <!--width="60" height="60"--></div>
                      <div class="percentage" id="percentage-'. preg_replace("/\s+/","",$val->v_column).'">'.$val->data_percentage.'</div>
                  </div>
          </button>';
                  
               }

//var_dump($str_val);die();
               echo $str_val;

                // echo json_encode($data);    
                // var_dump($data);die;
                // $this->view('content/vote_result_current', $data);
            // }
        }
    }



    /**
     * This function to vote
     * @param integer $id
     */
    public function realtime_result($id)
    {

        if (!empty($id)) {

                $data= $this->voting_counter->result($id);

                $str_val='';

                $first=1;
                foreach ($data['data'] as $val) {

                    if($first==1){

                        $selected='selected';
                        $first=null;
                     }else{
                          $selected='';
                     }
                        

                   $str_val .='<button class="btn-voting '.$selected.'" id="b'.preg_replace("/\s+/","",$val->v_column).'" data-value="'.$val->v_column.'" data-column="'.$val->v_column.'">
                  <div class="main-content">
                      <div class="progress-bar '.$selected.'-p-var" style="width:'.$val->data_percentage.'" id="value'.preg_replace("/\s+/","",$val->v_column).'" ></div>
                      <div class="serial-no" id="serial-no'.preg_replace("/\s+/","",$val->v_column).'"> '.$val->v_value.'
                        </div> 
                        <div><img class="img-content" src="'.base_url().'global/assets/demo.jpg" alt="Fjords" /> <!--width="60" height="60"--></div>
                      <div class="percentage" id="percentage-'. preg_replace("/\s+/","",$val->v_column).'">'.$val->data_percentage.'</div>
                  </div>
          </button>';
                  
               }


               echo $str_val;
                // echo json_encode($data);    

        }
    }


}

/* End of file dashboard.php */
/* Location: ./system/application/modules/matchbox/controllers/dashboard.php */