package com.itextpdf.forms.xfa;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class InverseStore {
    protected List<String> part = new ArrayList();
    protected List<Object> follow = new ArrayList();

    InverseStore() {
    }

    public String getDefaultName() {
        InverseStore inverseStore = this;
        while (true) {
            Object obj = inverseStore.follow.get(0);
            if (obj instanceof String) {
                return (String) obj;
            }
            inverseStore = (InverseStore) obj;
        }
    }

    public boolean isSimilar(String str) {
        String strSubstring = str.substring(0, str.indexOf(91) + 1);
        for (int i = 0; i < this.part.size(); i++) {
            if (this.part.get(i).startsWith(strSubstring)) {
                return true;
            }
        }
        return false;
    }
}
