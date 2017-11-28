<?php

/**
 * Created by PhpStorm.
 * User: matthewboddy
 * Date: 7/2/17
 * Time: 6:49 PM
 */
class LeaseOrderItem extends OrderItem
{
    private static $has_one = [
        'Lease' => 'Lease',
    ];

    private static $required_fields = array(
        'Lease'
    );

    private static $buyable_relationship = "Lease";

    /**
     * @return mixed
     */
    public function product()
    {
        return $this->Lease()->Product();
    }

    /**
     * @return mixed
     */
    public function image()
    {
        return $this->product()->Image();
    }

    /**
     * Primary title displayed in cart / orders.
     * @return mixed
     */
    public function TableTitle()
    {
        return $this->Product()->Title;
    }

    /**
     * Sub title, displayed in cart / order underneath TableTitle
     * @return string
     */
    public function SubTitle()
    {
        return 'Hire: '. $this->Lease()->Title; /* ' ($'. $this->Lease()->PricePerLength. '/mth)' */
    }
	/**
     * Description text, displayed in cart / order underneath SubTitle
     * @return string
     */
    public function Description()
    {
        return $this->Lease()->Description;
    }

    /**
     * Url to associated product.
     * @return mixed
     */

    public function Link()
    {
        return $this->product()->Link();
    }

}