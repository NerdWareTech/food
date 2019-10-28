<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pizza extends CI_Controller
{

    public function __construct()
	{
	
	    parent::__construct();
	
	
        $this->load->database();
      
	
	
	}
    public function index()
    {
        echo "Test";
    }
    function addCategory () {
        $name = $this->input->post('name');
        $id = $this->input->post('id');


        $data = array(
            'name'=>$name,
            'item_id'=>$id
        );

        $this->db->insert('cr_pizzacategories',$data);

        header('location:'.$_SERVER['HTTP_REFERER']);
        
      }

      function addRadio()
      {
            $name = $this->input->post('name');
            $price = $this->input->post('price');
            $catID= $this->input->post('category');
            $item_id = $this->input->post('id');

            $data = array(
                'name'=>$name,
                'id_Categories'=>$catID,
                'price'=>$price,
                'item_id'=>$item_id
               
            );

            $this->db->insert('cr_radiobuttons',$data);

            header('location:'.$_SERVER['HTTP_REFERER']);
      }


      function deleteCategory()
      {
        $catID= $this->input->post('category');
        $this->db->delete('cr_radiobuttons', array('id_categories' => $catID));
        $this->db->delete('cr_pizzacategories', array('id' => $catID));
        
        header('location:'.$_SERVER['HTTP_REFERER']);
      }

      function deleteRadio() 
      {
        $catID= $this->input->post('id');
        $this->db->delete('cr_radiobuttons', array('id' => $catID));
        header('location:'.$_SERVER['HTTP_REFERER']);
      }
}