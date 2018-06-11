
<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/* @property voting_model $voting */
class front_page extends Front
{

    function __construct()
    {
        parent::__construct();
        $this->load->language('voting');
        $this->load->model('voting_model', 'voting');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters("<span class='notification-input ni-error'>", "</span>");

    }
  public function register(){

     $this->form_validation->set_rules('sex', $this->lang->line('sex'), 'trim|required');
     // var_dump("expression");die;
        if ($this->form_validation->run() == false) {
            $this->view('content/register');
        } else { 
          // $this->view('content/register');
            $id=$this->voting->register();
            $this->session->set_userdata('voter_id',$id);
            redirect('voting/');
         }
  }

  public function biography(){

  $this->view('content/biography');

  }

  public function about(){

            $this->view('content/about');

  }

}