package com.retech.qc.entity.custom;

import java.util.ArrayList;
import java.util.List;

public class ListInfo {

    private int length = 0;
    private List list = new ArrayList();

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
