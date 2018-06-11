<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Voting_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();

    }

    /* This function create new vote. */

    function create($orderd_data,$orderd_data2)
    {
           
           $this->db->set('dv_title',$this->input->post('dv_title'));
           $this->db->set('dv_created', time());
           $this->db->insert('ci_voting');
           $id=$this->db->insert_id(); 
           foreach($orderd_data as $key => $value){
               $this->db->set('ci_votting_id',$id);
               $this->db->set(' candidate_name',$value);
               $this->db->set('can_image',$orderd_data2[$key]);
               $this->db->insert('voter_info');
               
           }
            
           foreach($orderd_data as $key => $value){
               $this->db->set('v_voting_id',$id);
               $this->db->set(' v_column',$value);
               $this->db->set(' v_data',$value);
               $this->db->set(' v_value',0);
               $this->db->set('v_image',$orderd_data2[$key]);
               $this->db->insert('ci_voting_counter');
               
           }

               $this->db->set('v_voting_id',$id);
               $this->db->insert('vote_state_count');
    }


    function update($orderd_data,$id)
    {


           $this->db->where('dv_id',$id);
		   $this->db->delete('ci_voting');

           $this->db->where('ci_votting_id',$id);
           $this->db->delete('voter_info');

           $this->db->set('dv_title',$this->input->post('dv_title'));
           $this->db->set('dv_created', time());
           $this->db->set('dv_state',$this->input->post('dv_state'));
           $this->db->insert('ci_voting');

           $id=$this->db->insert_id(); 

        foreach($orderd_data as $key => $value){
            // $this->db->set($key,$value);
            // $this->db->set('dv_created', time());
               $this->db->set('ci_votting_id',$id);
               $this->db->set(' candidate_name',$value);
               $this->db->insert('voter_info');
        }
        // $this->db->set('dv_title',$this->input->post('dv_title'));
        // $this->db->set('dv_state',$this->input->post('dv_state'));
        // $this->db->insert('ci_voting');
    }


    /* This function delete votes of new from database. */

    function delete($id)
    {
        $this->db->where('dv_id', $id);
        $this->db->delete('ci_voting');

        $this->db->where('v_voting_id', $id);
        $this->db->delete('ci_voting_counter');
        return TRUE;
    }

    function active($id) {
        $this->db->set('dv_state', 1);
        $this->db->where('dv_id', $id);
        $this->db->update('ci_voting');

        $this->db->set('dv_state',0);
        $this->db->where('dv_id !=', $id);
        $this->db->update('ci_voting');
        return $this->db->elapsed_time();
    }

    function deactivate($id) {
        $this->db->set('dv_state', 0);
        $this->db->where('dv_id', $id);
        $this->db->update('ci_voting');

        $this->db->set('dv_state',1);
        $this->db->where('dv_id !=', $id);
        $this->db->update('ci_voting');
    }

    function get_one($id)
    {
       $this->db->where('dv_id',$id);
       $result=$this->db->get('ci_voting');
       return $result->row();
    }
    /*  This function get all votes of news from database sort by order asc.*/

    function get_votes()
    {
        $this->db->order_by('dv_id', 'asc');
        $result=$this->db->get('ci_voting');
        return $result->result_array();
    }




    function get_categories_active()
    {
        $this->db->where('dv_state', '1');
        $result=$this->db->get('ci_voting');
        return $result->result_array();
    }

    function get_all_columns($id) {
        // $this->db->where('dv_id',$id);
         $this->db->where('ci_votting_id',$id);
        // $this->db->select('A,B,C,D,E,F,G,H,I,J');
        $this->db->select('candidate_name');
        $result=$this->db->get('voter_info');
        // $result=$result->result();
        // var_dump($result);die;
        $return = $result->result_array();
        // if ($result->num_rows() > 0) {
        //     foreach ($result->result_array() as $key=>$value) {
        //         $return[$key] = $value;
        //     }
        // }

        // var_dump($return);die;

        return $return;
    }

    function is_voted($id)
    {
        $this->db->where('v_voting_id', $id);
        $result = $this->db->get('ci_voting_counter');
        if ($result->num_rows() > 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    }



function register(){

      // if(isset($_POST['submit'])){
        
        $sex=$_POST['sex'];
        $age=$_POST['age'];
        $region=$_POST['region'];
           $this->db->set('age',$age);
           $this->db->set('sex', $sex);
           $this->db->set('region', $region);
           $this->db->insert('votin');
        // }

        $id=$this->db->insert_id();
        return $id;
        // var_dump($id);die;   

    }



 public function report_data($value='')
    {


    // $total = '(select sum(v_value) from ci_voting_counter where v_voting_id='.$id.')';

    // $this->db->select('*,concat(round((100*(v_value))/'.$total.',0),"%") as data_percentage')
    // ->from('ci_voting')
    // ->join('ci_voting_counter',"ci_voting_counter.v_voting_id = ci_voting.dv_id");
    // // ->join('voter_info',"voter_info.ci_votting_id = ci_voting.dv_id",'right');
    // $this->db->where('dv_id', $id)
    // ->order_by('v_value','desc');
    // ->group_by('dv_id');


      // $total_male = '(select sum(sex) from votin where v_voting_id='.$id.')';
      // $this->db->select('*,count() as data_percentage')

    $total_female = $this->db->query(" SELECT count(sex) as total_female FROM votin  JOIN ci_voting_counter ON ci_voting_counter.votin_id = votin.Id
                            WHERE sex='female' ")->result();

    var_dump($total_female);die;

    // $query = $this->db->get();

    // $data['data']=$query->result();
    }   

}