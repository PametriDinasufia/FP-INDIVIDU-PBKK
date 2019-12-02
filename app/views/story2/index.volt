{% extends 'template/index.volt' %}

{% block content %}
	

<div class="container-fluid" style="margin-top:100px">
    <div class="row">
        <div class="col-md-4">
			<form>
            <h2>Form</h2>

                <div class="form-group">
            <label>Judul Cerita</label>
            <input type="text" class="form-control" id="txtjudul" placeholder="MASUKKAN JUDUL CERITA">
        </div>
        <div class="form-group">
            <label>Info Cerita</label>
            <input type="text" class="form-control" id="txtinfo" placeholder="MASUKKAN INFO CERITA">
        </div>
        <div class="form-group">
            <label>Bab</label>
            <input type="text" class="form-control" id="txtbab" placeholder="MASUKKAN JUDUL BAB">
        </div>
     
        <button type="submit" class="btn btn-primary"  id="btnsimpan">Simpan</button>
        </br>
        </br>   
        </form>
        </div>
        <div class="col-md-12">
            <h2>Data</h2>
             <table class="table table-condensed table-hover">
			    <thead>
			      <tr>
                    <th>No</th>
			        <th>Judul Cerita</th>
			        <th>Info Cerita</th>
                    <th>Bab</th>
			        <th>Setting</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
                    <td>1</td>
                    <td>Timun Mas in Wonderland</td>
			        <td>Petualangan seorang gadis yang terdampar di cerita dongeng.</td>
                    <td>Encounter</td>
			        <td><a href="#" class="btn btn-info">
                            <span class="glyphicon glyphicon glyphicon-pencil"></span>
                            Edit
                        </a> | <a href="#" class="btn btn-danger">
                            <span class="glyphicon glyphicon glyphicon-remove"></span>
                            Hapus
                        </a></td>
			        
			      </tr>
			      <tr>
                    <td>2</td>
                    <td>IDK</td>
                    <td>IDK</td>
                    <td>IDK</td>
                    <td><a href="#" class="btn btn-info">
                            <span class="glyphicon glyphicon glyphicon-pencil"></span>
                            Edit
                        </a> | <a href="#" class="btn btn-danger">
                            <span class="glyphicon glyphicon glyphicon-remove"></span>
                            Hapus
                        </a></td>
                
                  </tr>
			    </tbody>
			  </table>
        </div>
        
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <footer>
                <p>&copy; Pametri Dinasufia (05111540000041) </p>
            </footer>
        </div>
    </div>
</div>
{% endblock %}