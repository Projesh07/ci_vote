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

		$this->db->where('Id', $votin_id);
		$gender = $this->db->get('votin');
		$gender = $gender->row('sex');

		$this->db->where('Id', $votin_id);
		$region = $this->db->get('votin');
		$region = $region->row('region');

		// var_dump($region);die;



	

		// var_dump(trim($region)=='Segou');die;
		if(count($result->row())>0){

		$result=$result->result();

		if($gender=='female'){
			$v_female=$result[0]->v_female+1;
			$this->db->set('v_female',$v_female);

		}else if($gender=='male'){
				$v_male=$result[0]->v_male+1;
				$this->db->set('v_male',$v_male);
		}else{
			$v_others=$result[0]->v_male+1;
			$this->db->set('v_others',$v_others);
		}
		// var_dump($result);
		$v_value=(int)($result[0]->v_value)+1;

		$this->db->set('v_value',$v_value);
		$this->db->set('v_vistor_ip',$ip);
		$this->db->set('v_image',$img);
		// $this->db->set('v_voting_id', $id);
		$this->db->set('votin_id',$votin_id);
		$this->db->where('v_data', $data);
		$this->db->update('ci_voting_counter');

		$this->db->set('v_vistor_ip',$ip);
		$this->db->update('ci_voting_counter');



						$this->db->where('v_voting_id', $id);
						$region_val = $this->db->get('vote_state_count');
						$region_val=$region_val->row();

				if(trim($region)=='Kayes'){
				
						$kayes=$region_val->kayes+1;
						$this->db->set('kayes',$kayes);
				}else if(trim($region)=='Bamako'){
						$bamako=$region_val->bamako+1;
						$this->db->set('bamako',$bamako);
				}else if(trim($region)=='Koulikoro'){
						$this->db->set('koulikoro',$v_value);

				}else if(trim($region)=='Segou'){
						$segou=$region_val->segou+1;
						$this->db->set('segou',$segou);

				}else if(trim($region)=='Sikasso'){
						$sikasso=$region_val->sikasso+1;
						$this->db->set('sikasso',$v_value);

				}else if(trim($region)=='Mopti'){
						$mopti=$region_val->mopti+1;
						$this->db->set('mopti',$mopti);

				}else if(trim($region)=='Gao'){
						$gao=$region_val->gao+1;
						$this->db->set('gao',$gao);

				}else if(trim($region)=='Tombouctou'){
						$tombouctou=$region_val->tombouctou+1;
						$this->db->set('tombouctou',$tombouctou);

				}else{
					$kidal=$region_val->kidal+1;
					$this->db->set('kidal',$kidal);

				}

				if($gender=='female'){
					$v_female=$region_val->v_female+1;
					$this->db->set('v_female',$v_female);

				}else if($gender=='male'){
						$v_male=$region_val->v_male+1;
						$this->db->set('v_male',$v_male);
				}else{
					$v_others=$region_val->v_male+1;
					$this->db->set('v_others',$v_others);
				}

				$this->db->where('v_voting_id', $id);
				$this->db->update('vote_state_count');

		}else{
		$this->db->set('v_column',$column);
		$this->db->set('v_data',$data);
		$this->db->set('v_image',$img);
		$this->db->set('v_vistor_ip',$ip);
		$this->db->set('v_voting_id', $id);
		$this->db->set('votin_id',$votin_id);
		$this->db->insert('ci_voting_counter');

		#vote_state_count
		$this->db->set('v_voting_id',$id);
		$this->db->insert('vote_state_count');

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
       //ON ci_voting_counter.v_voting_id = ci_voting.dv_id
        //WHERE dv_id=$id ")->result();
		
		
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