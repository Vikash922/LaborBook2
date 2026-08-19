package com.amplitude.core.utilities;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Diagnostics.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/amplitude/core/utilities/Diagnostics;", "", "()V", "errorLogs", "", "", "malformedEvents", "", "addErrorLog", "", "log", "addMalformedEvent", "event", "extractDiagnostics", "hasDiagnostics", "", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Diagnostics {
    private static final int MAX_ERROR_LOGS = 10;
    private Set<String> errorLogs;
    private List<String> malformedEvents;

    public Diagnostics() {
        Set<String> setSynchronizedSet = Collections.synchronizedSet(new LinkedHashSet());
        Intrinsics.checkNotNullExpressionValue(setSynchronizedSet, "synchronizedSet(mutableSetOf())");
        this.errorLogs = setSynchronizedSet;
    }

    public final void addMalformedEvent(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.malformedEvents == null) {
            this.malformedEvents = Collections.synchronizedList(new ArrayList());
        }
        List<String> list = this.malformedEvents;
        if (list == null) {
            return;
        }
        list.add(event);
    }

    public final void addErrorLog(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        this.errorLogs.add(log);
        while (this.errorLogs.size() > 10) {
            Set<String> set = this.errorLogs;
            set.remove(CollectionsKt.first(set));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasDiagnostics() {
        /*
            r1 = this;
            java.util.List<java.lang.String> r0 = r1.malformedEvents
            if (r0 == 0) goto Lf
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L19
        Lf:
            java.util.Set<java.lang.String> r0 = r1.errorLogs
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L1b
        L19:
            r0 = 1
            goto L1c
        L1b:
            r0 = 0
        L1c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.Diagnostics.hasDiagnostics():boolean");
    }

    public final String extractDiagnostics() {
        if (!hasDiagnostics()) {
            return "";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<String> list = this.malformedEvents;
        if (list != null) {
            Intrinsics.checkNotNull(list);
            if (!list.isEmpty()) {
                List<String> list2 = this.malformedEvents;
                Intrinsics.checkNotNull(list2);
                linkedHashMap.put("malformed_events", list2);
            }
        }
        if (!this.errorLogs.isEmpty()) {
            linkedHashMap.put("error_logs", CollectionsKt.toList(this.errorLogs));
        }
        String strValueOf = String.valueOf(JSONKt.toJSONObject(linkedHashMap));
        List<String> list3 = this.malformedEvents;
        if (list3 != null) {
            list3.clear();
        }
        this.errorLogs.clear();
        return strValueOf;
    }
}
