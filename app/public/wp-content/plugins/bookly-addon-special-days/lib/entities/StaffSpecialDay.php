<?php
namespace BooklySpecialDays\Lib\Entities;

use Bookly\Lib;

/**
 * Class StaffSpecialDay
 * @package BooklySpecialDays\Lib\Entities
 */
class StaffSpecialDay extends Lib\Base\Entity
{
    /** @var  int */
    protected $staff_id;
    /** @var  int */
    protected $location_id;
    /** @var  string */
    protected $date;
    /** @var  string */
    protected $start_time;
    /** @var  string */
    protected $end_time;

    protected static $table = 'bookly_staff_special_days';

    protected static $schema = array(
        'id' => array( 'format' => '%d' ),
        'staff_id' => array( 'format' => '%d', 'reference' => array( 'entity' => 'Staff', 'namespace' => '\Bookly\Lib\Entities' ) ),
        'location_id' => array( 'format' => '%d' ),
        'date' => array( 'format' => '%s' ),
        'start_time' => array( 'format' => '%s' ),
        'end_time' => array( 'format' => '%s' ),
    );

    /**
    * Get list of breaks
    *
    * @return StaffSpecialDayBreak[]
    */
    public function getBreaksList()
    {
        return StaffSpecialDayBreak::query()
            ->where( 'staff_special_day_id', $this->getId() )
            ->sortBy( 'start_time, end_time' )
            ->fetchArray();
    }

    /**************************************************************************
     * Entity Fields Getters & Setters                                        *
     **************************************************************************/

    /**
     * Gets staff_id
     *
     * @return int
     */
    public function getStaffId()
    {
        return $this->staff_id;
    }

    /**
     * Sets staff
     *
     * @param Lib\Entities\Staff $staff
     * @return $this
     */
    public function setStaff( Lib\Entities\Staff $staff )
    {
        return $this->setStaffId( $staff->getId() );
    }

    /**
     * Sets staff_id
     *
     * @param int $staff_id
     * @return $this
     */
    public function setStaffId( $staff_id )
    {
        $this->staff_id = $staff_id;

        return $this;
    }

    /**
     * Gets location_id
     *
     * @return int
     */
    public function getLocationId()
    {
        return $this->location_id;
    }

    /**
     * Sets location_id
     *
     * @param int $location_id
     * @return $this
     */
    public function setLocationId( $location_id )
    {
        $this->location_id = $location_id;

        return $this;
    }

    /**
     * Gets date
     *
     * @return string
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Sets date
     *
     * @param string $date
     * @return $this
     */
    public function setDate( $date )
    {
        $this->date = $date;

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
