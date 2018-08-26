package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.CustomerMessage;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;


@Component(value = "customerMapper")
public interface CustomerMapper {

    /**
     * 根据用户名字，电话，身份证查询用户详细信息
     * @param customerName，customerPhone,customerIdentityId
     * @return 员工详细信息信息
     * @throws IOException
     */
    public List<CustomerMessage> findCustomer(@Param("customerName") String customerName,
                                              @Param("customerPhone") String customerPhone,
                                              @Param("customerIdentityId") String customerIdentityId,
                                              @Param("startRow") int startRow,
                                              @Param("length") int length) throws IOException;

    /**
     * 根据指定信息查询符合条件的customer数量
     * @return
     * @throws IOException
     */
    public int findCusCount(@Param("customerName") String customerName,
                            @Param("customerPhone") String customerPhone,
                            @Param("customerIdentityId") String customerIdentity) throws IOException;

    /**
     * 添加一条用户信息
     * @param customerMessage
     * @return
     * @throws IOException
     */
    public Integer addCustomerMessage(CustomerMessage customerMessage) throws IOException;

    /**
     * 更新用户详细信息
     * @param customerMessage
     * @return
     * @throws IOException
     */
    public Integer updateCustomerMessage(CustomerMessage customerMessage) throws IOException;

    /**
     * 根据用户id删除用户信息
     * @param customerId
     * @return
     * @throws IOException
     */
    public Integer delCustomerById(Integer customerId) throws IOException;

}
