<?
  class m_document_icon extends CI_Model
  {		
  	  public function showedit($id = "")
  	  {
  	  	 $sql     = "select * from document_icon where id = $id order by id desc ";
  	  	 $result  = $this->db->query($sql);
  	  	 $result  = $result->result_array();
  	  	 return $result;
  	  }
  	  public function getall()
  	  {
  	  	 $sql     = "select * from document_icon order by id desc ";
  	  	 $result  = $this->db->query($sql);
  	  	 $result  = $result->result_array();
  	  	 return $result;
  	  }
  	  public function insert_data($data = '')
  	  {
  	  	$this->db->set('cdate', 'NOW()', FALSE);
        $this->db->set('udate', 'NOW()', FALSE);
  	  	$this->db->insert('document_icon', $data); 
  	  }

  }
?>