<?php
namespace BooklySpecialDays\Lib\Entities;

use Bookly\Lib;

/**
 * Class ServiceSpecialDayBreak
 * @package BooklySpecialDays\Lib\Entities
 */
class ServiceSpecialDayBreak extends Lib\Base\Entity
{
    /** @var  int */
    protected $service_special_day_id;
    /** @var  string */
    protected $start_time;
    /** @var  string */
    protected $end_time;

    protected static $table = 'bookly_service_special_days_breaks';

    protected static $schema = array(
        'id'                   => array( 'format' => '%d' ),
        'service_special_day_id' => array( 'format' => '%d', 'reference' => array( 'entity' => 'ServiceSpecialDay' ) ),
        'start_time'           => array( 'format' => '%s' ),
        'end_time'             => array( 'format' => '%s' ),
    );

    /**************************************************************************
     * Entity Fields Getters & Setters                                        *
     **************************************************************************/

    /**
     * Gets service_special_day_id
     *
     * @return int
     */
    public function getServiceSpecialDayId()
    {
        return $this->service_special_day_id;
    }

    /**
     * Sets service_special_day_id
     *
     * @param int $service_special_day_id
     * @return $this
     */
    public function setServiceSpecialDayId( $service_special_day_id )
    {
        $this->service_special_day_id = $service_special_day_id;

        return $this;
    }

    /**
     * Gets start_time
     *
     * @return string
     */
    public function getStartTime()
    {
        return $this->start_time;
    }

    /**
     * Sets start_time
     *
     * @param string $start_time
     * @return $this
     */
    public function setStartTime( $start_time )
    {
        $this->start_time = $start_time;

        return $this;
    }

    /**
     * Gets end_time
     *
     * @return string
     */
    public function getEndTime()
    {
        return $this->end_time;
    }

    /**
     * Sets end_time
     *
     * @param string $end_time
     * @return $this
     */
    public function setEndTime( $end_time )
    {
        $this->end_time = $end_time;

        return $this;
    }

}
