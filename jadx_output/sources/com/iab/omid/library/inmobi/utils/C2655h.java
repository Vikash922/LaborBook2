package com.iab.omid.library.inmobi.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.h */
/* JADX INFO: loaded from: classes6.dex */
public final class C2655h {
    /* JADX INFO: renamed from: a */
    public static String m733a(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility == 8) {
            return "viewGone";
        }
        if (visibility == 4) {
            return "viewInvisible";
        }
        if (visibility != 0) {
            return "viewNotVisible";
        }
        if (view.getAlpha() == 0.0f) {
            return "viewAlphaZero";
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static Activity m734b(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static View m735c(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public static float m736d(View view) {
        return view.getZ();
    }

    /* JADX INFO: renamed from: e */
    public static boolean m737e(View view) {
        Activity activityM734b = m734b(view);
        if (activityM734b != null) {
            return activityM734b.isInPictureInPictureMode();
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m738f(View view) {
        return m733a(view) == null;
    }

    /* JADX INFO: renamed from: g */
    public static boolean m739g(View view) {
        if (!view.isAttachedToWindow() || !view.isShown()) {
            return false;
        }
        while (view != null) {
            if (view.getAlpha() == 0.0f) {
                return false;
            }
            view = m735c(view);
        }
        return true;
    }
}
