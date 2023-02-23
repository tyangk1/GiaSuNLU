package com.nlu.fit.giasunlu.utils;

public enum CoinEnum {

    TOPUP(0),
    USE(1);

    private final int value;

    public static CoinEnum valueOf(int value) {
        switch (value) {
            case 0:
                return CoinEnum.TOPUP;
            case 1:
                return CoinEnum.USE;
            default:
                return CoinEnum.TOPUP;
        }
    }


    private CoinEnum(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public String getName() {
        switch (this) {
            case TOPUP:
                return "Đã nạp!";
            case USE:
                return "Đã dùng!";
            default:
                return "Đã nạp!";
        }
    }




}
