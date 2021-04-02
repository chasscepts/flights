module SampleHtml
  KONGA = %{
    <main>
      <div id="deal2" class="tab-pane fade in active">
        <div class="sldrw custom">
          <div class="holi_head">
            <h2 class="headline">Flight Deals</h2>
          </div>
          <h5>
            Find out our cheapest flights for the top flight destinations around the world! Please Call 08094605555
          </h5>
          <div id="owl_demo_destp" class="owl-carousel owlindexnw owl-theme">
            <div class="owl-wrapper-outer">
              <div class="owl-wrapper">
                <div class="owl-item">
                  <a class="top_dest_form flight-wrap">
                    <form target="_blank" method="post"  id="top_city3">
                      <input type="hidden" name="trip_type_tf" value="oneway">
                      <input type="hidden" name="from_tf" value="Lagos, Nigeria,Murtala Muhammed Airport (LOS)">
                      <input type="hidden" name="from_loc_id_tf" value="4267">
                      <input type="hidden" name="to_tf" value="Abuja, Nigeria,International Airport (ABV)">
                      <input type="hidden" name="to_loc_id_tf" value="45">
                      <input type="hidden" name="depature_tf" value="12-02-2021">
                      <input type="hidden" name="adult_tf" value="1">
                      <input type="hidden" name="child_tf" value="0">
                      <input type="hidden" name="infant_tf" value="0">
                      <input type="hidden" name="v_class_tf" value="Economy">
                      <input type="hidden" name="search_flight_tf" value="search">
                      <input type="hidden" name="top_search" value="top_search">
                      <div class="item col-md-12 padfive1">
                        <div class="fullsec">
                          <div class="destpl">
                            <!--   <button class="btn btn-search">Search <i class="fa fa-plane"></i></button> -->
                            <img src="/extras/custom/keWD7SNXhVwQmNRymfGN/images/abuja-fct.jpg" alt="">
                            <div class="desplname dubai">
                              <div class="row">
                                <div class="col-sm-8 col-xs-8text-left">
                                  <h5 class="fwb mb-0 text-overflow">Lagos-Abuja</h5>
                                  <p>Oneway</p>
                                </div>
                                <div class="col-sm-4 col-xs-4">
                                  <p class="fwb mb-0 mt-2">From</p>
                                  <h5 class="fwb text-pink m-0 fs15">₦ 24,245</h5>
                                </div>
                              </div>
                              <!-- <div class="eal_pri"><span>From</span> QAR 450.00</div>  -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </a>
                </div>
                <div class="owl-controls clickable" style="display: block;">
                  <div class="owl-buttons">
                    <div class="owl-prev">prev</div>
                    <div class="owl-next">next</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  }.freeze

  WAKANOW = %{
    <owl-carousel-o class="flight-deals ng-star-inserted" _nghost-tmr-c95="">
      <div class="owl-carousel owl-theme owl-loaded owl-responsive owl-drag">
        <div class="owl-stage-outer ng-star-inserted">
          <owl-stage class="ng-tns-c96-1">
            <div class="ng-tns-c96-1">
              <div class="owl-stage ng-tns-c96-1">
                <div class="owl-item ng-tns-c96-1 ng-trigger ng-trigger-autoHeight active ng-star-inserted">
                  <div class="item ng-star-inserted" style="">
                    <app-flight-card _nghost-tmr-c124="">
                      <a href="javascript:void(0);">
                        <div class="card flight-deal-cards">
                          <img alt="" class="img-fluid mx-auto d-block bg-image-fixed ng-star-inserted">
                          <div class="flight-location-overlay">
                            <div class="media text-white">
                              <div class="media-body">
                                <p class="mb-1">Lagos
                                  <i class="mdi mdi-arrow-right mx-1"></i>
                                  <span class="font-weight-medium location">London</span>
                                </p>
                                <p class="font-12">Apr 15, 2021 - May 10, 2021</p>
                              </div>
                              <div class="ml-2">
                                <img alt="" >
                              </div>
                            </div>
                          </div>
                          <div class="flight-paynow-overlay">
                            <div class="media text-white">
                              <div class="media-body">
                                <p class="font-12 mb-1">Pay now</p>
                                <h5 class="font-18 text-white mb-0">₦273,835</h5>
                              </div>
                              <div class="ml-2 ng-star-inserted">
                                <a class="btn btn-primary">
                                  <div class="media">
                                    <div class="align-self-center mr-1">
                                      <img src="assets/images/icons/paysmallsmall-white.png" alt="">
                                    </div>
                                    <div class="media-body">
                                      <span class="font-12">Lock this fare</span>
                                      <span class="d-block font-18 mb-0">₦76,673</span>
                                    </div>
                                  </div>
                                </a>
                              </div><!---->
                            </div>
                          </div>
                        </div>
                      </a>
                    </app-flight-card>
                  </div><!----><!---->
                </div><!---->
              </div><!----><!---->
            </div>
          </owl-stage>
        </div>
      </div>
    </owl-carousel-o>
  }
end
