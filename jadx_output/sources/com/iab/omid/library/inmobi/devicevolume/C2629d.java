package com.iab.omid.library.inmobi.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.devicevolume.d */
/* JADX INFO: loaded from: classes6.dex */
public final class C2629d extends ContentObserver {

    /* JADX INFO: renamed from: a */
    private final Context f620a;

    /* JADX INFO: renamed from: b */
    private final AudioManager f621b;

    /* JADX INFO: renamed from: c */
    private final C2626a f622c;

    /* JADX INFO: renamed from: d */
    private final InterfaceC2628c f623d;

    /* JADX INFO: renamed from: e */
    private float f624e;

    public C2629d(Handler handler, Context context, C2626a c2626a, InterfaceC2628c interfaceC2628c) {
        super(handler);
        this.f620a = context;
        this.f621b = (AudioManager) context.getSystemService("audio");
        this.f622c = c2626a;
        this.f623d = interfaceC2628c;
    }

    /* JADX INFO: renamed from: a */
    private float m575a() {
        return this.f622c.m572a(this.f621b.getStreamVolume(3), this.f621b.getStreamMaxVolume(3));
    }

    /* JADX INFO: renamed from: a */
    private boolean m576a(float f) {
        return f != this.f624e;
    }

    /* JADX INFO: renamed from: b */
    private void m577b() {
        this.f623d.mo574a(this.f624e);
    }

    /* JADX INFO: renamed from: c */
    public void m578c() {
        this.f624e = m575a();
        m577b();
        this.f620a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* JADX INFO: renamed from: d */
    public void m579d() {
        this.f620a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float fM575a = m575a();
        if (m576a(fM575a)) {
            this.f624e = fM575a;
            m577b();
        }
    }
}
