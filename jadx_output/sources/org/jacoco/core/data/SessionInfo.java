package org.jacoco.core.data;

/* JADX INFO: loaded from: classes6.dex */
public class SessionInfo implements Comparable<SessionInfo> {
    private final long dump;

    /* JADX INFO: renamed from: id */
    private final String f4742id;
    private final long start;

    public SessionInfo(String str, long j, long j2) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        this.f4742id = str;
        this.start = j;
        this.dump = j2;
    }

    public String getId() {
        return this.f4742id;
    }

    public long getStartTimeStamp() {
        return this.start;
    }

    public long getDumpTimeStamp() {
        return this.dump;
    }

    @Override // java.lang.Comparable
    public int compareTo(SessionInfo sessionInfo) {
        long j = this.dump;
        long j2 = sessionInfo.dump;
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    public String toString() {
        return "SessionInfo[" + this.f4742id + "]";
    }
}
