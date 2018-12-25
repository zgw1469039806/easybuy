package com.bdqn.conversion;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName DateConversion   类型转换器
 * @Author alan.wang   QQ:3103484396
 * @Description TODO
 */
public class DateConversion extends PropertyEditorSupport
{


    @Override
    public void setAsText(String text) throws IllegalArgumentException
    {
        System.out.println("text:" + text);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = sdf.parse(text);
            super.setValue(date);
        } catch (ParseException e) {
            sdf = new SimpleDateFormat("yyyy/MM/dd");
            try {
                Date date = sdf.parse(text);
                super.setValue(date);
            } catch (ParseException e1) {
                e1.printStackTrace();
            }
        }
    }
}
