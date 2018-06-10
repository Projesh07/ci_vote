<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/* @property voting_model $voting */
class admin_voting extends Front_end
{

    function __construct()
    {
        parent::__construct();
        $this->load->language('voting');
        $this->load->model('voting_model', 'voting');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters("<span class='notification-input ni-error'>", "</span>");

    }

    public function index()
    {
        $this->votes_list();

    }

    /** 
     *  display all categories of votings in datagrid.
     */
    public function votes_list()
    {
        $data['categories'] = $this->voting->get_votes();
        $this->view('content/votes_list', $data);
    }

    /**
     *  create new voting
     */
    public function create()
    {

                $config['upload_path']          = './uploads/';
                $config['allowed_types']        = 'gif|jpg|png';
                $config['max_size']             = 100;
                $config['max_width']            = 1024;
                $config['max_height']           = 768;
                $this->load->library('upload', $config);
                // $this->upload->initialize($config);

        $this->form_validation->set_rules('dv_title', $this->lang->line('dv_title'), 'trim|required');
        if ($this->form_validation->run() == false) {
            $this->view('content/voting_new');
        } else {
            // choices sent by the form
            $fields = $this->input->post('fields');

            $files = $_FILES['userfiles'] ;

            // remove empty choices,order every choice by chars from A To Z
            $orderd_data = $this->array_combine2($fields);

            var_dump($orderd_data);
$images = array();

    foreach ($files['name'] as $key => $image) {
        $_FILES['images[]']['name']= $files['name'][$key];
        $_FILES['images[]']['type']= $files['type'][$key];
        $_FILES['images[]']['tmp_name']= $files['tmp_name'][$key];
        $_FILES['images[]']['error']= $files['error'][$key];
        $_FILES['images[]']['size']= $files['size'][$key];

        $fileName = 'can_img' .'_'. $image;

        $images[] = $fileName;

        $config['file_name'] = $fileName;

        $this->upload->initialize($config);

        if ($this->upload->do_upload('images[]')) {
            $this->upload->data();
        } else {
            return false;
        }
    }

 $orderd_data2 = $this->array_combine2($images);

            $this->voting->create($orderd_data,$orderd_data2);
             // die();
            $this->session->set_flashdata('success_msg', 'Vote Succesfully Created');
            redirect('admin_voting/votes_list/');
        }



    }

    /**
     * This function edit the vote
     * @example id=1
     * @param integer $id
     */
    public function edit($id)
    {
        $data['vote'] = $this->voting->get_one($id);
        $columns = $this->voting->get_all_columns($id);
        $data['columns'] = array_filter($columns);
        $vote = $this->voting->is_voted($id);
        if (!empty($vote)) {
            $this->session->set_flashdata('success_msg', 'sorry,you cant edit live vote');
            redirect('admin_voting/votes_list/');
        }
        $this->form_validation->set_rules('dv_title', $this->lang->line('dv_title'), 'trim|required');
        if ($this->form_validation->run() == false) {
            $this->view('content/voting_edit', $data);
        } else {

            $fields = $this->input->post('fields');
            $orderd_data = $this->array_combine2($fields);
            $this->voting->update($orderd_data, $id);
            $this->session->set_flashdata('success_msg', 'Vote Succesfully edit');
            redirect('admin_voting/votes_list/');
        }
    }

    function array_combine2($arr2)
    {
        $filter_arr2 = array_filter($arr2);
        $arr1 = range('A', 'z');
        $count = min(count($arr1), count($filter_arr2));
        return array_combine(array_slice($arr1, 0, $count), array_slice($filter_arr2, 0, $count));
    }


    /**
     * This function remove voting then redirect to votes_list
     * @example id=1
     * @param integer $id
     */
    public function remove($id)
    {
        if ($this->voting->delete($id)) {
            $this->session->set_flashdata('success_msg', 'Vote successfully removed');
            redirect('admin_voting/votes_list/');
        }
    }

    /**
     * This function active voting then redirect to votes_list
     * @example id=1
     * @param integer $id
     */
    function activate_vote($id)
    {

        $this->voting->active($id);
        $this->session->set_flashdata('success_msg', '1 new category activated!');
        redirect('admin_voting/votes_list/');
    }

    /**
     * This function deactivate voting then redirect to votes_list
     * @example id=1
     * @param integer $id
     */
    function deactivate_vote($id)
    {
        $this->voting->deactivate($id);
        $this->session->set_flashdata('success_msg', '1 new category deactivated!');
        redirect('admin_voting/votes_list/');
    }


    function print_report(){


// https://github.com/aiwmedia/HTML2PDF-CI
$this->load->library('html2pdf');

//Set folder to save PDF to
$this->html2pdf->folder('./assets/pdfs/');

//Set the filename to save/download as
$this->html2pdf->filename('test.pdf');

//Set the paper defaults
$this->html2pdf->paper('a4', 'portrait');

//Load html view
$this->html2pdf->html('<h1>Some Title</h1><p>Some content in here</p>');
$this->html2pdf->create('download');

    }



  public function register(){

     $this->form_validation->set_rules('sex', $this->lang->line('sex'), 'trim|required');
     // var_dump("expression");die;
        if ($this->form_validation->run() == false) {
            $this->view('content/register');
        } else { 
          // $this->view('content/register');
            $this->voting->register();
            die;
         }
  }



}

/* End of file dashboard.php */
/* Location: ./system/application/modules/matchbox/controllers/dashboard.php */