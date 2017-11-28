<% if $Items %>

    <div class="cart">

        <% loop $Items %>

            <div id="$TableID" class="cart__row $Classes">

                <div class="cart__row__image">
                    <% if $Image %>
                        <div class="image">
                            <a href="$Link" title="View {Title}">
                                $Image.Fit(100,100)
                            </a>
                        </div>
                    <% end_if %>
                </div>

                <div class="cart__row__product">

                    <div class="details" id="$TableTitleID">
                        <h3 class="title">
                            <% if $Link %>
                                <a href="$Link" title="View {$TableTitle}">
                                    $TableTitle
                                </a>
                            <% else %>
                                $TableTitle
                            <% end_if %>
                        </h3>
						
						
                        <% if $SubTitle %>
                            <p class="subtitle">
                                $SubTitle
                            </p>
                        <% end_if %>
						<% if $Description %>
                            <p class="description">
                                $Description
                            </p>
                        <% end_if %>
                    </div>

                    <div class="variation">
                        <% if $Product.Variations && $Up.Editable %>
                            <%t Shop.Change "Change" %>: $VariationField
                        <% end_if %>
                    </div>

                    <div class="quantity">
                        <strong>Quantity</strong>
                        <% if $Up.Editable %>
                            $QuantityField
                        <% else %>
                            $Quantity
                        <% end_if %>
                    </div>


                    <div class="price" id="$TableTotalID">
                        $Total.Nice
                    </div>

                </div>

                <% if $Up.Editable %>

                    <a href="$removeallLink" title="Remove {$TableTitle} from your cart">
                        <i class="icon fa fa-times" aria-hidden="true"></i>
                    </a>

                <% end_if %>

            </div>
        <% end_loop %>

    <div class="cart__row cart__row--subtotal">
        <strong>Sub-total</strong>
        $SubTotal.Nice
    </div>
	
	
	
		
			
		<div class="cart__row col-sm-12 Grey PaymentOptions $getVisibility">
		
			<div class="col-sm-8">
	
				<h5>PAYMENT OPTIONS:</h5>
	
				<h5><strong>Cash</strong> - in full, to delivery driver or at equipment collection</h5>
	
		 		<h5><strong>Credit/Debit Card </strong> - in full, in advance of delivery or collection</h5>
	
		 		<h5><strong>Monthly Instalments</strong> - via Credit/Debit Card - first payment includes delivery</h5>
		 
		 		<h5>Please let us know your preferred option when we call you to confirm your order.</h5>
	
			</div>
	
			<div class=" col-sm-4 speech-bubble DarkGrey center">
				
				<h4 class="light"><strong>Free massage ball when you <span style="white-space:nowrap">pay in full</span></strong></h4>
			
			</div>
	
		</div>
	
	
	

    <% if $ShowSubtotals %>
      
		<% if $Modifiers %>
            <% loop $Modifiers %>
                <% if $ShowInTable %>

                    <div class="cart__row cart__row--subtotal $Classes" id="$TableID">
                        <strong id="$TableTitleID">

                            <% if $Link %>
                                <a href="$Link" title="View {$TableTitle}">
                                    $TableTitle
                                </a>
                            <% else %>
                                $TableTitle
                            <% end_if %>

                        </strong>
						
						
						
						<% if $TableTitle == "Delivery (Standard Delivery*)" %>
						
								<% if $TableValue == "$0.00" %>
						
									- Price to be confirmed
							
									<% else %>
						
                        			<span id="$TableTotalID">$TableValue.Nice</span>
						
								<% end_if %>
								
								<% else %>
								
								- from Fleet Fitness Service Centre & Showroom, Balcatta
								
						<% end_if %>
						
						

                        <% if $Up.Editable %>
                            <% if $CanRemove %>
                                <a class="ajaxQuantityLink" href="$removeLink" title="Remove {$TableTitle} from your cart.">
                                    <i class="icon fa fa-times" aria-hidden="true"></i>
                                </a>
                            <% end_if %>
                        <% end_if %>

                        <% if $Form %>
                            $Form
                        <% end_if %>

                    </div>

                <% end_if %>
            <% end_loop %>
        <% end_if %>
	
	<!--
	<div class="cart__row cart__row--subtotal">
		
		<strong>Delivery:</strong>
											
						$ShippingMethod.Title 
                       
					   		<% if $Shipping == "$0.00" %> 
							
								Price to be confirmed
								
								<% else %>		
								
								$Shipping.Nice 
								
							<% end_if %>
						
	</div>
	-->

        <div class="cart__row  cart__row--total total" id="$TableTotalID">
            <strong>Total</strong>
            $Total.Nice
        </div>

    <% end_if %>
	
	
	

    </div>

<% else %>

    <p class="message warning">
        There are no items in your order. <br>
        Check out what we have on <a href="/products">offer</a>.
    </p>

<% end_if %>
