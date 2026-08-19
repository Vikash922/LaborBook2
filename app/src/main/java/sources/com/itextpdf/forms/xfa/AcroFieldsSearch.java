package com.itextpdf.forms.xfa;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class AcroFieldsSearch extends Xml2Som {
    private Map<String, String> acroShort2LongName;

    public AcroFieldsSearch(Collection<String> collection) {
        this.inverseSearch = new HashMap();
        this.acroShort2LongName = new HashMap();
        for (String str : collection) {
            String shortName = getShortName(str);
            this.acroShort2LongName.put(shortName, str);
            inverseSearchAdd(this.inverseSearch, splitParts(shortName), str);
        }
    }

    public Map<String, String> getAcroShort2LongName() {
        return this.acroShort2LongName;
    }

    public void setAcroShort2LongName(Map<String, String> map) {
        this.acroShort2LongName = map;
    }
}
