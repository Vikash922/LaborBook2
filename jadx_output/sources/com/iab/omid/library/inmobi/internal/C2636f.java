package com.iab.omid.library.inmobi.internal;

import android.view.View;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.f */
/* JADX INFO: loaded from: classes6.dex */
public class C2636f {

    /* JADX INFO: renamed from: b */
    private static final Pattern f642b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a */
    private final List<C2635e> f643a = new ArrayList();

    /* JADX INFO: renamed from: a */
    private void m609a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    /* JADX INFO: renamed from: a */
    private void m610a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!f642b.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    /* JADX INFO: renamed from: b */
    private C2635e m611b(View view) {
        for (C2635e c2635e : this.f643a) {
            if (c2635e.m607c().get() == view) {
                return c2635e;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public List<C2635e> m612a() {
        return this.f643a;
    }

    /* JADX INFO: renamed from: a */
    public void m613a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        m609a(view);
        m610a(str);
        if (m611b(view) == null) {
            this.f643a.add(new C2635e(view, friendlyObstructionPurpose, str));
        }
    }

    /* JADX INFO: renamed from: b */
    public void m614b() {
        this.f643a.clear();
    }

    /* JADX INFO: renamed from: c */
    public void m615c(View view) {
        m609a(view);
        C2635e c2635eM611b = m611b(view);
        if (c2635eM611b != null) {
            this.f643a.remove(c2635eM611b);
        }
    }
}
