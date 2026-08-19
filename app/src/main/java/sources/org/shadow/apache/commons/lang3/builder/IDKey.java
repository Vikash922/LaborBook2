package org.shadow.apache.commons.lang3.builder;

/* JADX INFO: loaded from: classes4.dex */
final class IDKey {

    /* JADX INFO: renamed from: id */
    private final int f4769id;
    private final Object value;

    public IDKey(Object obj) {
        this.f4769id = System.identityHashCode(obj);
        this.value = obj;
    }

    public int hashCode() {
        return this.f4769id;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IDKey)) {
            return false;
        }
        IDKey iDKey = (IDKey) obj;
        return this.f4769id == iDKey.f4769id && this.value == iDKey.value;
    }
}
