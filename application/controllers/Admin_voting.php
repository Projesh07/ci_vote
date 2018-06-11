<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/* @property voting_model $voting */
class admin_voting extends Front_end
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

         

    $images = array();

    foreach ($files['name'] as $key => $image) {
        $_FILES['images[]']['name']= $files['name'][$key];
        $_FILES['images[]']['type']= $files['type'][$key];
        $_FILES['images[]']['tmp_name']= $files['tmp_name'][$key];
        $_FILES['images[]']['error']= $files['error'][$key];
        $_FILES['images[]']['size']= $files['size'][$key];

        $str = '01234567891011121314151617181920212223242526';

        $shuffled = str_shuffle($str);
        $shuffled = substr($shuffled,1,10);



        $fileName = $shuffled.'_'. $image;

        
         

        $images[] = $fileName;
         
        // var_dump($images);

        $config['file_name'] = $fileName;

        $this->upload->initialize($config);

        if ($this->upload->do_upload('images[]')) {
            $this->upload->data();
        } else {
            return false;
        }
    }

// var_dump($fileName);die();
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
$this->html2pdf->paper(array(0, 0, 595, 841), 'portrait');


//Load html view
$html=$this->generate_report();

$this->html2pdf->html($html);
$this->html2pdf->create('save');

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


public function generate_report(){


    $data=$this->voting->report_data();

    // var_dump($data['table_two']);die();

    




$table='    
<html>
    <head>
        <title>Result sheet</title>


        <style>
         @page { size: 1000pt 700pt; }
    .TFtable{
        width:100%; 
        border-collapse:collapse; 
    }
    .TFtable td{ 
        padding:7px; border:#4e95f4 1px solid;
    }
    /* provide some minimal visual accomodation for IE8 and below */
    .TFtable tr{
        background: #f00ff0;
    }
    /*  Define the background color for all the ODD background rows  */
    .TFtable tr:nth-child(odd){ 
        background: #fffff0;
    }
    /*  Define the background color for all the EVEN background rows  */
    .TFtable tr:nth-child(even){
        background: #ff0ff0;
    }
        </style>

    </head>
    <body>
        <div class="container">
<table style="width:600px">
 <table class="TFtable">
 
<table border="3" style="background-color:#FFFFCC;border-collapse:collapse;border:3px solid #00FF00;color:#000000;width:100%" cellpadding="3" cellspacing="5">
    <tr>
        <td>Candidate Name</td>
        <td>Total Vote Count</td>
        <td>Total percantage</td>
        <td>Total Male Vote </td>
        <td>Total Femal Vote </td>
        <td>Kayes</td>
        <td>Bamako</td>
        <td>Koulikoro</td>
        <td>Ségou</td>
        <td>Sikasso</td>
        <td>Mopti</td>
        <td>Gao</td>
        <td>Tombouctou</td>
        <td>Kidal</td>
    </tr>';

    foreach ($data['table_one'] as  $value) {

        // var_dump($value);
        # code...

    $table.='<tr>
         <td>'.$value->v_column.'</td>
         <td>'.$value->total_vote.'</td>
         <td>'.$value->total_percentage.'</td>
         <td>'.$value->total_m_vote.'</td>
         <td>'.$value->total_f_vote.'</td>
         <td>'.$value->kayes.'</td>
         <td>'.$value->bamako.'</td>
         <td>'.$value->koulikoro.'</td>
             <td>'.$value->segou.'</td>
         <td>'.$value->sikasso.'</td>
         <td>'.$value->mopti.'</td>
         <td>'.$value->gao.'</td>
         <td>'.$value->tombouctou.'</td>
             <td>'.$value->kidal.'</td>

     </tr>';
    }

 $table .='</table></table></table>';






    $table_two='<br>
            <h2>Every Region Result</h2>
    <div class="row">
        
    <table class=" table table-responsive table-striped table-bordered">
        <thead>
            <tr>
               
                <th>Region</th>
                <th> Total Male Vote Count </th>
                <th>Total Male Vote percentage (%)</th>
                 <th>Total Female Vote count</th>
                <th>Total Female Vote  percantage (%) </th>
                
            </tr>
        </thead>
        <tbody>
            <tr>
                
                <td> Kayes</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
              
            </tr>
            <tr>
                <td>Bamako</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
            <tr>
                <td>Koulikoro</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
               <tr>
                <td>Ségou</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
               <tr>
                <td>Sikasso</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
               <tr>
                <td>Mopti</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
               <tr>
                <td>Gao</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
               <tr>
                <td>Tombouctou</td>
                 <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
               <tr>
                <td>Kidal</td>
                <td>'.$data['table_two'][0]->v_male.'</td>
                 <td>'.$data['table_two'][0]->male_percentage.'</td>
                 
                <td>'.$data['table_two'][0]->v_female.'</td>
                <td>'.$data['table_two'][0]->female_percentage.'</td>
            </tr>
                
        </tbody></table>
            </div>
                </div>
        </body>
        </html>';


$html =$table.$table_two;

return $html;
}

}

/* End of file dashboard.php */
/* Location: ./system/application/modules/matchbox/controllers/dashboard.php */