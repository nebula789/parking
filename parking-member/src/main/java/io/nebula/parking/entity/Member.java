package io.nebula.parking.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 会员信息
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
public class Member implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    /**
     * 手机号
     */
    private String phone;

    /**
     * 生日
     */
    private String birth;

    /**
     * 姓名
     */
    private String fullName;

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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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
        return "Member{" +
        "id = " + id +
        ", phone = " + phone +
        ", birth = " + birth +
        ", fullName = " + fullName +
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
