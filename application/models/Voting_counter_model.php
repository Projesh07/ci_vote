<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Voting_counter_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');
	}


	function add_vote($id, $ip)
	{
		// $opt_leave = explode(",", $this->input->post('v_column'));
		// $column = $opt_leave[0];
		// $data = $opt_leave[1];
		// var_dump($data);die();
		$column=$this->input->post('v_column');
		$data=$this->input->post('v_column');
		$img=$this->input->post('can_image');
		$this->db->where('v_data', $data);
		$this->db->where('v_voting_id', $id);
		$result = $this->db->get('ci_voting_counter');
		
		// return $result->row();
		$votin_id = $this->session->userdata('voter_id');

		// var_dump(count($result->row()));die;
		if(count($result->row())>0){

		$result=$result->result();
		// var_dump($result);
		$v_value=(int)($result[0]->v_value)+1;
		// var_dump($result[0]->v_value);die;
		// var_dump($v_value);die;	
		// $this->db->set('v_column',$column);
		// $this->db->set('v_data',$data);
		$this->db->set('v_value',$v_value);
		$this->db->set('v_vistor_ip',$ip);
		$this->db->set('v_image',$img);
		// $this->db->set('v_voting_id', $id);
		$this->db->set('votin_id',$votin_id);
		$this->db->where('v_data', $data);
		$this->db->update('ci_voting_counter');

		}else{
		$this->db->set('v_column',$column);
		$this->db->set('v_data',$data);
		$this->db->set('v_image',$img);
		$this->db->set('v_vistor_ip',$ip);
		$this->db->set('v_voting_id', $id);
		$this->db->set('votin_id',$votin_id);
		$this->db->insert('ci_voting_counter');
		}

	}

	function get_one_active()
	{
		$this->db->where('dv_state', 1);
		$result = $this->db->get('ci_voting');
		return $result->row();
	}

	function get_all_columns_active($id)
	{
		// $this->db->where('dv_state', 1);
		// $this->db->select('A,B,C,D,E,F,G,H,I,J');
		// $result = $this->db->get('ci_voting');
		$total = '(select sum(v_value) from ci_voting_counter)';
		$this->db->select('*,concat(round((100*(v_value))/'.$total.',0),"%") as data_percentage')
		->from('ci_voting')
		->join('ci_voting_counter',"ci_voting_counter.v_voting_id = ci_voting.dv_id");
		// ->join('voter_info',"voter_info.ci_votting_id = ci_voting.dv_id",'right');
		$this->db->where('dv_id', $id)
		->order_by('v_value','desc');
		// ->group_by('dv_id');

		$query = $this->db->get();

		$return['data'] = $query->result_array();
		// $return = array();
		// if ($result->num_rows() > 0) {
		// 	foreach ($result->row_array() as $key => $value) {
		// 		$return[$key] = $value;
		// 	}
		// }

		// var_dump($return);die;

		return $return;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////frontend//////////////////////////////////////////////////////////
	function check_ip($id, $ip)
	{
		$this->db->where('v_voting_id', $id);
		$this->db->where('v_vistor_ip', $ip);
		$result = $this->db->get('ci_voting_counter');
		if ($result->num_rows() > 0) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	/*  This function get  result of specified voting by join the ci_voting table and ci_voting_counter table .*/

	function result($id)
	{

		// $result = $this->db->query(" SELECT * FROM ci_voting_counter  JOIN ci_voting
  //                           ON ci_voting_counter.v_voting_id = ci_voting.dv_id
  //                           WHERE dv_id=$id ")->result();
		
		
		$total = '(select sum(v_value) from ci_voting_counter where v_voting_id='.$id.')';
		$this->db->select('*,concat(round((100*(v_value))/'.$total.',0),"%") as data_percentage')
		->from('ci_voting')
		->join('ci_voting_counter',"ci_voting_counter.v_voting_id = ci_voting.dv_id");
		// ->join('voter_info',"voter_info.ci_votting_id = ci_voting.dv_id",'right');
		$this->db->where('dv_id', $id)
		->order_by('v_value','desc');
		// ->group_by('dv_id');

		$query = $this->db->get();

		$data['data']=$query->result();
		// $query1 = $this->db->last_query();

		// // $result = $result->result();

		// $this->db->select('max(concat(round((100*(v_value))/'.$total.',0),"%")) as max_percentage,v_column')
		// ->from('ci_voting_counter')
		// ->join('ci_voting',"ci_voting_counter.v_voting_id = ci_voting.dv_id");
		// $this->db->where('dv_id', $id)
		// ->order_by('v_value','desc');
		// $query2 = $this->db->get();
		// $data['max'] = $query2->result();
		

		return $data;
	}


	function vote_result($id)
	{	
		// $this->db->where('v_voting_id', $id);
		// $result = $this->db->get('ci_voting_counter');
		// $result=$result->result();
		// return $result;
	}
	// get total number of voting one
	function getNumVoting($id)
	{
		$result = $this->db->query("SELECT v_column,v_data,
									SUM(v_value) as vote_value,
			(SELECT SUM(v_value)FROM ci_voting_counter WHERE v_voting_id=$id) as total
									FROM ci_voting_counter
									WHERE v_voting_id=$id
									GROUP BY v_column")->result_array();

		foreach($result as $key => $value)
		{
			$value['prec'] = round(100*($value['vote_value'] / $value['total']),2);
			$result[$key] = $value;

		}
		return array_filter($result);

	}

}