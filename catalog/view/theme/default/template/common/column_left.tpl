<?php if ($modules) { ?>

  <aside id="column-left" class="col-sm-3 -hidden-xs">

    <?php foreach ($modules as $module) { ?>

    <?php   echo $module; ?>

    <?php } ?>



    <!-- <form action="http://prokitsoccer.localhost:81/index.php?route=product/category&path=60" method="put"> -->

      <!-- <input type="hidden" name="route" value="product/category&path=63"> -->

      <!-- <input type="hidden" name="de" value="12"> -->

      <div class="filter_group" style="display: none;">

        <div class="heading_title"><i style="font-size:20px;" class="fa fa-wa fa-list"></i> <?php echo $heading_title;?></div>



         <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">

        <?php

          $i = 1;

          foreach ($filterGroups as $filterGroup) {

            // if($i==1){

            //  // $expand = 'true';

            //  // $in = 'in';

        //       $expand = 'false';

        //       $in = '';

            // }else{

              if(isset($_REQUEST[$filterGroup['name']])){

                $expand = 'true';

                $in = 'in';



              }else{

                $expand = 'false';

                $in = '';

              }

            // }

            echo "<div class=\"-panel\">";

            echo '<a class="panel-headings" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne'.$i.'" aria-expanded="'.$expand.'" aria-controls="collapseOne">

                    <div class="panel-title" style="padding:10px 10px 0px 10px;"><div class="filter_title">'.$filterGroup['name'].' <span class="pull-right"><i class="fa fa-wa fa-plus"></i></span></div></div></a> ';

                  //   <a class="panel-headings" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

                  //     <div class="panel-title" style="padding:10px;">Collapsible Group Items #1</div>

                  //   </a>

                  //   <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">

                  //     <div class="panel-body">

                  //       <!-- data -->

                  //     </div>

                  //   </div>

                  // </div>

                  echo'<div id="collapseOne'.$i.'" class="panel-collapse collapse '.$in.'" role="tabpanel" aria-labelledby="headingOne">';

                          echo '<div class="panel-body" style="background-color:#121111;">';

                  // echo"<div class='block-filter'>";

                  //  echo "<div class='filter_title'>".$filterGroup['name'].'</div>';

                  // ##########################



                  if(isset($_REQUEST[$filterGroup['name']])){

                    echo "<a href='javascript:void(0);'><input checked='checked' type='checkbox'> &nbsp;".$_REQUEST[$filterGroup['name']]."</a><br>";

                  }else{

                    foreach ($filterGroup['filters_data'] as $filter) {

                      foreach ($filter['filter_name'] as $key => $value) {

                        $request_uri= $_SERVER['REQUEST_URI'];

                        echo "<a href='".$request_uri."&".$filterGroup['name']."=".$value['name']."'><input style='background-color:#f00;' type='checkbox'> &nbsp;".$value['name']."</a><br>";

                      }

                    }

                  }

                    // #####################



                  // echo"<div class='clearfix'></div>";

                  // echo"</div>";



              echo'</div>';

            echo'</div>';

            echo"</div>";

            $i++;

          }

        ?>

        </div>



        <!-- start accordion -->

                    <div style="display: none;" class="accordion" id="accordion" role="tablist" aria-multiselectable="true">

                      <div class="panel">

                        <a class="panel-headings" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

                          <div class="panel-title" style="padding:10px;">Collapsible Group Items #1</div>

                        </a>

                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">

                          <div class="panel-body">

                            <!-- data -->

                          </div>

                        </div>

                      </div>

                      <div class="panel">

                        <a  class="panel-headings collapsed" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">

                          <h4 class="panel-title" style="padding:10px;">Collapsible Group Items #2</h4>

                        </a>

                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">

                          <div class="panel-body">

                            <p><strong>Collapsible Item 2 data</strong>

                            </p>

                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,

                          </div>

                        </div>

                      </div>

                      <div class="panel">

                        <a class="panel-headings collapsed" role="tab" id="headingThree" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">

                          <h4 class="panel-title">Collapsible Group Items #3</h4>

                        </a>

                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">

                          <div class="panel-body">

                            <p><strong>Collapsible Item 3 data</strong>

                            </p>

                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor

                          </div>

                        </div>

                      </div>

                    </div>

                    <!-- end of accordion -->

      </div>

      <div style="display: none;background-color:#f00;text-align: center;padding:10px;font-weight: 200px;font-size:15px;color:#fff;">

        <a id="filter" href="<?php echo $link_cat;?>" style="color:#fff;">RESET FILTER</a>

      </div>

    <!-- </form> -->



    <script type="text/javascript">

      $("#filter").click(function(){

        window.location.reload(true);

      });

    </script>

  </aside>

<?php } ?>

