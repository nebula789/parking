package io.nebula.parking.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 会员车辆
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
public class Vehicle implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    /**
     * 会员编号
     */
    private String memberId;

    /**
     * 车牌号
     */
    private String plateNo;

    /**
     * 车辆型号
     */
    private String vehicleInf;

    /**
     * 创建人
     */
    private String createBy;

    /**
     * 创建日期
     */
    private LocalDateTime createDate;

    /**
     * 更新人
     */
    private String updateBy;

    /**
     * 更新日期
     */
    private LocalDateTime updateDate;

    /**
     * 备注
     */
    private String remark;

    /**
     * 版本
     */
    private Integer version;

    /**
     * 状态
     */
    private Integer state;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getPlateNo() {
        return plateNo;
    }

    public void setPlateNo(String plateNo) {
        this.plateNo = plateNo;
    }

    public String getVehicleInf() {
        return vehicleInf;
    }

    public void setVehicleInf(String vehicleInf) {
        this.vehicleInf = vehicleInf;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public LocalDateTime getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDateTime createDate) {
        this.createDate = createDate;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
        "id = " + id +
        ", memberId = " + memberId +
        ", plateNo = " + plateNo +
        ", vehicleInf = " + vehicleInf +
        ", createBy = " + createBy +
        ", createDate = " + createDate +
        ", updateBy = " + updateBy +
        ", updateDate = " + updateDate +
        ", remark = " + remark +
        ", version = " + version +
        ", state = " + state +
        "}";
    }
}
