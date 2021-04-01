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
                    <form target="_blank" action="https://travel.konga.com/index.php/general/pre_flight_search" method="post"  id="top_city3">
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

  KONGA_FLIGHTS = %{
    <div>
      <div id="deal2">
        <div class="flight-wrap>
          <form><input name="aa"></form><form></form><form></form><form></form><form></form>
        </div>
      </div>
    </div>
  }.freeze
end
