package com.itextpdf.p017io.font.cmap;

/* JADX INFO: loaded from: classes6.dex */
public class CMapObject {
    protected static final int ARRAY = 6;
    protected static final int DICTIONARY = 7;
    protected static final int HEX_STRING = 2;
    protected static final int LITERAL = 5;
    protected static final int NAME = 3;
    protected static final int NUMBER = 4;
    protected static final int STRING = 1;
    protected static final int TOKEN = 8;
    private int type;
    private Object value;

    public CMapObject(int i, Object obj) {
        this.type = i;
        this.value = obj;
    }

    public Object getValue() {
        return this.value;
    }

    public int getType() {
        return this.type;
    }

    public void setValue(Object obj) {
        this.value = obj;
    }

    public boolean isString() {
        int i = this.type;
        return i == 1 || i == 2;
    }

    public boolean isHexString() {
        return this.type == 2;
    }

    public boolean isName() {
        return this.type == 3;
    }

    public boolean isNumber() {
        return this.type == 4;
    }

    public boolean isLiteral() {
        return this.type == 5;
    }

    public boolean isArray() {
        return this.type == 6;
    }

    public boolean isDictionary() {
        return this.type == 7;
    }

    public boolean isToken() {
        return this.type == 8;
    }

    public String toString() {
        int i = this.type;
        if (i == 1 || i == 2) {
            byte[] bArr = (byte[]) this.value;
            StringBuilder sb = new StringBuilder(bArr.length);
            for (byte b : bArr) {
                sb.append((char) (b & 255));
            }
            return sb.toString();
        }
        return this.value.toString();
    }

    public byte[] toHexByteArray() {
        if (this.type == 2) {
            return (byte[]) this.value;
        }
        return null;
    }
}
