package com.itextpdf.forms.xfa;

import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.shadow.apache.commons.lang3.ClassUtils;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
class Xml2Som {
    protected int anform;
    protected Map<String, InverseStore> inverseSearch;
    protected Map<String, Node> name2Node;
    protected List<String> order;
    protected Stack<String> stack;

    Xml2Som() {
    }

    public static String escapeSom(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(46);
        if (iIndexOf < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (iIndexOf >= 0) {
            sb.append(str.substring(i, iIndexOf));
            sb.append('\\');
            i = iIndexOf;
            iIndexOf = str.indexOf(46, iIndexOf + 1);
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    public static String unescapeSom(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (iIndexOf >= 0) {
            sb.append(str.substring(i, iIndexOf));
            i = iIndexOf + 1;
            iIndexOf = str.indexOf(92, i);
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    protected String printStack() {
        if (this.stack.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.stack.size(); i++) {
            sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR).append(this.stack.get(i));
        }
        return sb.substring(1);
    }

    public static String getShortName(String str) {
        int iIndexOf = str.indexOf(".#subform[");
        if (iIndexOf < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (iIndexOf >= 0) {
            sb.append(str.substring(i, iIndexOf));
            int iIndexOf2 = str.indexOf("]", iIndexOf + 10);
            if (iIndexOf2 < 0) {
                return sb.toString();
            }
            i = iIndexOf2 + 1;
            iIndexOf = str.indexOf(".#subform[", i);
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    public void inverseSearchAdd(String str) {
        inverseSearchAdd(this.inverseSearch, this.stack, str);
    }

    public static void inverseSearchAdd(Map<String, InverseStore> map, Stack<String> stack, String str) {
        InverseStore inverseStore;
        String strPeek = stack.peek();
        InverseStore inverseStore2 = map.get(strPeek);
        if (inverseStore2 == null) {
            inverseStore2 = new InverseStore();
            map.put(strPeek, inverseStore2);
        }
        for (int size = stack.size() - 2; size >= 0; size--) {
            String str2 = stack.get(size);
            int iIndexOf = inverseStore2.part.indexOf(str2);
            if (iIndexOf < 0) {
                inverseStore2.part.add(str2);
                inverseStore = new InverseStore();
                inverseStore2.follow.add(inverseStore);
            } else {
                inverseStore = (InverseStore) inverseStore2.follow.get(iIndexOf);
            }
            inverseStore2 = inverseStore;
        }
        inverseStore2.part.add("");
        inverseStore2.follow.add(str);
    }

    public String inverseSearchGlobal(List<String> list) {
        InverseStore inverseStore;
        if (list.size() == 0 || (inverseStore = this.inverseSearch.get(list.get(list.size() - 1))) == null) {
            return null;
        }
        for (int size = list.size() - 2; size >= 0; size--) {
            String str = list.get(size);
            int iIndexOf = inverseStore.part.indexOf(str);
            if (iIndexOf < 0) {
                if (inverseStore.isSimilar(str)) {
                    return null;
                }
                return inverseStore.getDefaultName();
            }
            inverseStore = (InverseStore) inverseStore.follow.get(iIndexOf);
        }
        return inverseStore.getDefaultName();
    }

    public static Stack<String> splitParts(String str) {
        int iIndexOf;
        while (str.startsWith(".")) {
            str = str.substring(1);
        }
        Stack<String> stack = new Stack<>();
        int i = 0;
        while (true) {
            int i2 = i;
            while (true) {
                iIndexOf = str.indexOf(46, i2);
                if (iIndexOf < 0 || str.charAt(iIndexOf - 1) != '\\') {
                    break;
                }
                i2 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                break;
            }
            String strSubstring = str.substring(i, iIndexOf);
            if (!strSubstring.endsWith("]")) {
                strSubstring = strSubstring + "[0]";
            }
            stack.add(strSubstring);
            i = iIndexOf + 1;
        }
        String strSubstring2 = str.substring(i);
        if (!strSubstring2.endsWith("]")) {
            strSubstring2 = strSubstring2 + "[0]";
        }
        stack.add(strSubstring2);
        return stack;
    }

    public List<String> getOrder() {
        return this.order;
    }

    public void setOrder(List<String> list) {
        this.order = list;
    }

    public Map<String, Node> getName2Node() {
        return this.name2Node;
    }

    public void setName2Node(Map<String, Node> map) {
        this.name2Node = map;
    }

    public Map<String, InverseStore> getInverseSearch() {
        return this.inverseSearch;
    }

    public void setInverseSearch(Map<String, InverseStore> map) {
        this.inverseSearch = map;
    }
}
