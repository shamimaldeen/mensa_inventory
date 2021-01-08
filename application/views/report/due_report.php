
<!-- Sales Report Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('due_report') ?></h1>
            <small><?php echo display('due_report') ?></small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url();?>"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('report') ?></a></li>
                <li class="active"><?php echo display('due_report') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">


        <div class="row">
            <div class="col-sm-12">
                

                  <?php if($this->permission1->method('todays_sales_report','read')->access()){ ?>
                    <a href="<?php echo base_url('Admin_dashboard/todays_sales_report') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('sales_report') ?> </a>
                <?php }?>
        <?php if($this->permission1->method('todays_purchase_report','read')->access()){ ?>
                    <a href="<?php echo base_url('Admin_dashboard/todays_purchase_report') ?>" class="btn btn-success m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('purchase_report') ?> </a>
                  <?php }?>
                  <?php if($this->permission1->method('product_sales_reports_date_wise','read')->access()){ ?>
                    <a href="<?php echo base_url('Admin_dashboard/product_sales_reports_date_wise') ?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('sales_report_product_wise') ?> </a>
                    <?php }?>
    <?php if($this->permission1->method('todays_sales_report','read')->access() && $this->permission1->method('todays_purchase_report','read')->access()){ ?>
                    <a href="<?php echo base_url('Admin_dashboard/total_profit_report') ?>" class="btn btn-warning m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('profit_report') ?> </a>
                    <?php }?>

               
            </div>
        </div>

        <!-- Sales report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('Admin_dashboard/retrieve_dateWise_DueReports', array('class' => 'form-inline', 'method' => 'get')) ?>
                        <?php
                        date_default_timezone_set("Asia/Dhaka");
                        $today = date('Y-m-d');
                        ?>
                        <div class="form-group">
                            <label class="" for="from_date"><?php echo display('start_date') ?></label>
                            <input type="text" name="from_date" class="form-control datepicker" id="from_date" placeholder="<?php echo display('start_date') ?>" value="<?php echo (!empty($from_date)?$from_date:$today) ?>">
                        </div> 

                        <div class="form-group">
                            <label class="" for="to_date"><?php echo display('end_date') ?></label>
                            <input type="text" name="to_date" class="form-control datepicker" id="to_date" placeholder="<?php echo display('end_date') ?>" value="<?php echo (!empty($to_date)?$to_date:$today) ?>">
                        </div>  

                        <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                        <a  class="btn btn-warning" href="#" onclick="printDiv('purchase_div')"><?php echo display('print') ?></a>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('due_report'); ?> </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="purchase_div">
                                    <table class="print-table" width="100%">
                                                
                                                <tr>
                                                    <td align="left" class="print-table-tr">
                                                        <img src="<?php echo $software_info[0]['logo'];?>" alt="logo">
                                                    </td>
                                                    <td align="center" class="print-cominfo">
                                                        <span class="company-txt">
                                                            <?php echo $company[0]['company_name'];?>
                                                           
                                                        </span><br>
                                                        <?php echo $company[0]['address'];?>
                                                        <br>
                                                        <?php echo $company[0]['email'];?>
                                                        <br>
                                                         <?php echo $company[0]['mobile'];?>
                                                        
                                                    </td>
                                                   
                                                     <td align="right" class="print-table-tr">
                                                        <date>
                                                        <?php echo display('date')?>: <?php
                                                        echo date('d-M-Y');
                                                        ?> 
                                                    </date>
                                                    </td>
                                                </tr>            
                                   
                                </table>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th><?php echo display('sales_date') ?></th>
                                            <th><?php echo display('invoice_no') ?></th>
                                            <th><?php echo display('customer_name') ?></th>
                                            <th><?php echo display('total_amount') ?></th>
                                            <th><?php echo display('paid_amount') ?></th>
                                            <th><?php echo display('due_amount')?><?php echo form_open('Admin_dashboard/retrieve_dateWise_DueReports', array('class' => 'form-inline', 'method' => 'get')) ?>
                                            <input type="hidden" value="<?php echo (!empty($from_date)?$from_date:date('Y-m-d')) ?>" name="from_date">
                                             <input type="hidden" value="<?php echo (!empty($to_date)?$to_date:date('Y-m-d')) ?>" name="to_date">
                                             <input type="hidden" name="all" value="all">
                                              <button type="submit" class="btn btn-success"><?php echo display('all') ?></button>
                                             <?php echo form_close() ?></th>
                                        </tr>
                                    </thead>
                                   
                                    <tbody>
                                        <?php
                                         $subtotal = 0;
                                            $subtotal_due = 0;
                                            $subtotal_paid = 0;
                                        if ($sales_report) {
                                            ?>
                                    
                                            <?php 
                                            $subtotal = 0;
                                            $subtotal_due = 0;
                                            $subtotal_paid = 0;
                                            foreach($sales_report as $sales){ ?>
                                            <tr>
                                        <td><?php echo $sales['sales_date']?></td>
                                        <td>
                                            
                                                <?php echo html_escape($sales['invoice'])?></td>
                                        <td><?php echo $sales['customer_name']?></td>
                                        <td class="text-right"><?php  if($position == 0){
                                              echo $currency.' '. number_format($sales['total_amount'],2);  
                                            }else{
                                            echo number_format($sales['total_amount'],2).' '.$currency; 
                                            }
                                            $subtotal += $sales['total_amount']; ?> </td>
                                         <td class="text-right"><?php
                                                 if($position == 0){
                                              echo $currency.' '.number_format($sales['paid_amount']);  
                                            }else{
                                            echo number_format($sales['paid_amount']).' '.$currency; 
                                            }
                                                 $subtotal_paid += $sales['paid_amount'];
                                                ?></td>
                                                <td class="text-right"><?php
                                                 if($position == 0){
                                              echo $currency.' '.number_format($sales['due_amount']);  
                                            }else{
                                            echo number_format($sales['due_amount']).' '.$currency; 
                                            }
                                                 $subtotal_due += $sales['due_amount'];
                                                ?></td>
                                            
                                            </tr>
                                            <?php } ?>
                                        <?php } else {
                                            ?>

                                            <tr>
                                                <th class="text-center" colspan="6"><?php echo display('not_found'); ?></th>
                                            </tr> 
                                        <?php } ?>
                                    </tbody>
                                     <tfoot>
                                        <tr>
                                            <td colspan="3" class="text-right"><b><?php echo display('total') ?></b></td>
                                            <td class="text-right"><b><?php echo (($position == 0) ? $currency.' '.number_format($subtotal) : number_format($subtotal).' '. $currency) ?></b></td>
                                            <td class="text-right"><b><?php echo (($position == 0) ? $currency.' '. number_format($subtotal_paid) : number_format($subtotal_paid).' '. $currency) ?></b></td>
                                            <td class="text-right"><b><?php echo (($position == 0) ? $currency.' '. number_format($subtotal_due) : ($subtotal_due).' '. $currency) ?></b></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="text-right"><?php echo $links ?></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Sales Report End -->