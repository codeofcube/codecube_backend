package com.bingyublog.codecube.util.exception;


  /**
 * @Classname MangoException
 * @Description 自定义异常
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public class MangoException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    private String msg;
    private int code = 500;

    public MangoException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public MangoException(String msg, Throwable e) {
        super(msg, e);
        this.msg = msg;
    }

    public MangoException(String msg, int code) {
        super(msg);
        this.msg = msg;
        this.code = code;
    }

    public MangoException(String msg, int code, Throwable e) {
        super(msg, e);
        this.msg = msg;
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

}
