package com.lunatic.pojo;

public class Result<T> {

    public Result() {
    }

    public Result(ResultType type, T data) {
        this.type = type;
        this.data = data;
    }

    public Result(ResultType type, String massage, T data) {
        this.type = type;
        this.massage = massage;
        this.data = data;
    }

    private ResultType type;
    private String massage;
    private T data;

    public ResultType getType() {
        return type;
    }

    public void setType(ResultType type) {
        this.type = type;
    }

    public String getMassage() {
        return massage;
    }

    public void setMassage(String massage) {
        this.massage = massage;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public   enum  ResultType{
        /** 成功 */
        SUCCESS,
        /** 警告 */
        WARNING,
        /** 失败 */
        FAILURE;
    }
}
