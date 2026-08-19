package com.amplitude.android;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: DefaultTrackingOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0016\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B/\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u0013"}, m2722d2 = {"Lcom/amplitude/android/DefaultTrackingOptions;", "", "sessions", "", "appLifecycles", "deepLinks", "screenViews", "(ZZZZ)V", "getAppLifecycles", "()Z", "setAppLifecycles", "(Z)V", "getDeepLinks", "setDeepLinks", "getScreenViews", "setScreenViews", "getSessions", "setSessions", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class DefaultTrackingOptions {
    private boolean appLifecycles;
    private boolean deepLinks;
    private boolean screenViews;
    private boolean sessions;
    public static final DefaultTrackingOptions ALL = new DefaultTrackingOptions(true, true, true, true);
    public static final DefaultTrackingOptions NONE = new DefaultTrackingOptions(false, false, false, false);

    public DefaultTrackingOptions() {
        this(false, false, false, false, 15, null);
    }

    public DefaultTrackingOptions(boolean z) {
        this(z, false, false, false, 14, null);
    }

    public DefaultTrackingOptions(boolean z, boolean z2) {
        this(z, z2, false, false, 12, null);
    }

    public DefaultTrackingOptions(boolean z, boolean z2, boolean z3) {
        this(z, z2, z3, false, 8, null);
    }

    public DefaultTrackingOptions(boolean z, boolean z2, boolean z3, boolean z4) {
        this.sessions = z;
        this.appLifecycles = z2;
        this.deepLinks = z3;
        this.screenViews = z4;
    }

    public /* synthetic */ DefaultTrackingOptions(boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4);
    }

    public final boolean getSessions() {
        return this.sessions;
    }

    public final void setSessions(boolean z) {
        this.sessions = z;
    }

    public final boolean getAppLifecycles() {
        return this.appLifecycles;
    }

    public final void setAppLifecycles(boolean z) {
        this.appLifecycles = z;
    }

    public final boolean getDeepLinks() {
        return this.deepLinks;
    }

    public final void setDeepLinks(boolean z) {
        this.deepLinks = z;
    }

    public final boolean getScreenViews() {
        return this.screenViews;
    }

    public final void setScreenViews(boolean z) {
        this.screenViews = z;
    }
}
