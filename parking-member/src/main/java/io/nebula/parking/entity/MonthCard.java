package io.nebula.parking.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 会员月卡信息
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
@TableName("month_card")
public class MonthCard implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    /**
     * 会员卡号
     */
    private String cardNo;

    /**
     * 有效期起始
     */
    private String start;

    /**
     * 有效期截止
     */
    private String ends;

    /**
     * 会员编号
     */
    private String memberId;

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

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnds() {
        return ends;
    }

    public void setEnds(String ends) {
        this.ends = ends;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
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
        return "MonthCard{" +
        "id = " + id +
        ", cardNo = " + cardNo +
        ", start = " + start +
        ", ends = " + ends +
        ", memberId = " + memberId +
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
