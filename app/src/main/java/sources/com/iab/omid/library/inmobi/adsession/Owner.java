package com.iab.omid.library.inmobi.adsession;

import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: loaded from: classes6.dex */
public enum Owner {
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript"),
    NONE("none");

    private final String owner;

    Owner(String str) {
        this.owner = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.owner;
    }
}
