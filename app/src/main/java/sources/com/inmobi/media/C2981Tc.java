package com.inmobi.media;

import android.content.ComponentName;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import android.webkit.WebView;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.window.embedding.ActivityFilter;
import androidx.window.embedding.ActivityRule;
import androidx.window.embedding.RuleController;
import com.facebook.AuthenticationTokenClaims;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.iab.omid.library.inmobi.Omid;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Lazy;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.json.JSONException;
import org.json.JSONObject;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.Tc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2981Tc {

    /* JADX INFO: renamed from: b */
    public static boolean f1554b;

    /* JADX INFO: renamed from: a */
    public static final C2981Tc f1553a = new C2981Tc();

    /* JADX INFO: renamed from: c */
    public static final C2967Sc f1555c = new C2967Sc();

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ void m1825a(C2981Tc c2981Tc) {
        c2981Tc.getClass();
        m1826b();
    }

    /* JADX INFO: renamed from: b */
    public static final void m1827b(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            WebView webView = new WebView(context);
            webView.setWebViewClient(new C2821Id());
            webView.clearCache(true);
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: d */
    public static final void m1828d(Context context) {
        C3133e6 c3133e6M2058a;
        String string;
        Context contextM1254d;
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(context, "$context");
        C2864Lb c2864Lb = C2864Lb.f1237a;
        if (c2864Lb.m1325b(context) && AbstractC3341s4.m2399a(context).isEmpty()) {
            c2864Lb.m1324a(context, false);
        }
        C3100c3 c3100c3 = C3100c3.f1911a;
        Intrinsics.checkNotNull("c3");
        LinkedList linkedList = new LinkedList(AbstractC2942R1.m1751a((C3041Y2) AbstractC2744Db.f951d.getValue(), null, null, null, null, null, null, 63));
        C3100c3.f1912b = linkedList;
        Object objClone = linkedList.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        C3100c3.f1913c = (LinkedList) objClone;
        ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
        Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
        Intrinsics.checkNotNullParameter("starting", "message");
        Log.i("AdQualityComponent", "starting");
        if (C3127e0.f2036d == null) {
            C3127e0.f2036d = new C3097c0(C3127e0.f2037e);
        }
        C3097c0 c3097c0 = C3127e0.f2036d;
        if (c3097c0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            c3097c0 = null;
        }
        if (c3097c0.f1902b.get()) {
            Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
            Intrinsics.checkNotNullParameter("already started", "message");
            Log.i("AdQualityComponent", "already started");
        } else {
            C3097c0 c3097c02 = C3127e0.f2036d;
            if (c3097c02 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("executor");
                c3097c02 = null;
            }
            c3097c02.m2038a();
        }
        AbstractC3372u5.m2491b();
        AbstractC3372u5.m2489a();
        C2901O3 c2901o3 = AbstractC2886N3.f1293a;
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        AdConfig adConfig = (AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        C3292p0 adReqDeprecateChecker = adConfig.getAdReqDeprecateChecker();
        AbstractC2886N3.f1297e = adReqDeprecateChecker != null ? adReqDeprecateChecker.m2381a(true) : true;
        AbstractC2886N3.m1389e();
        if (adConfig.getRendering().getEnableImmersive()) {
            if (AbstractC2886N3.f1301i && (contextM1254d = C2849Kb.m1254d()) != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a2 = AbstractC3118d6.m2058a(contextM1254d, "display_info_store");
                Intrinsics.checkNotNullParameter("safe_area", "key");
                String string2 = c3133e6M2058a2.f2045a.getString("safe_area", null);
                if (string2 != null) {
                    try {
                        jSONObject = new JSONObject(string2);
                    } catch (JSONException unused) {
                        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                        jSONObject = null;
                    }
                    AbstractC2886N3.f1298f = jSONObject;
                    Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                    Objects.toString(AbstractC2886N3.f1298f);
                } else {
                    jSONObject = null;
                    AbstractC2886N3.f1298f = jSONObject;
                    Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                    Objects.toString(AbstractC2886N3.f1298f);
                }
            }
            if (AbstractC2886N3.f1301i) {
                if (AbstractC2886N3.m1390f() != null) {
                    Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                } else {
                    Context contextM1254d2 = C2849Kb.m1254d();
                    if (contextM1254d2 != null) {
                        ConcurrentHashMap concurrentHashMap2 = C3133e6.f2044b;
                        C3133e6 c3133e6M2058a3 = AbstractC3118d6.m2058a(contextM1254d2, "display_info_store");
                        Intrinsics.checkNotNullParameter("nav_bar_type", "key");
                        int i = c3133e6M2058a3.f2045a.getInt("nav_bar_type", -1);
                        Integer numValueOf = Integer.valueOf(i);
                        AbstractC2886N3.f1299g = numValueOf;
                        if (i == -1) {
                            numValueOf = null;
                        }
                        AbstractC2886N3.f1299g = numValueOf;
                        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                    }
                }
            }
        }
        String str = C3152fa.f2071a;
        try {
            Context contextM1254d3 = C2849Kb.m1254d();
            if (contextM1254d3 != null && C3152fa.f2073c.getPurchases().getInapp()) {
                Context contextM1254d4 = C2849Kb.m1254d();
                if (contextM1254d4 != null) {
                    ConcurrentHashMap concurrentHashMap3 = C3133e6.f2044b;
                    c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d4, "purchase_store");
                } else {
                    c3133e6M2058a = null;
                }
                if (c3133e6M2058a != null) {
                    Intrinsics.checkNotNullParameter("purchase_pref", "key");
                    string = c3133e6M2058a.f2045a.getString("purchase_pref", null);
                } else {
                    string = null;
                }
                if (string != null) {
                    C3152fa.f2071a = string;
                }
                if (C3152fa.m2137a(contextM1254d3)) {
                    C3152fa.f2074d = 1;
                    C3407wa c3407wa = new C3407wa();
                    C3152fa.f2072b = c3407wa;
                    c3407wa.m2561a(contextM1254d3, new C3122da());
                }
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
        m1826b();
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Reflection.getOrCreateKotlinClass(ActivityFilter.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(ActivityRule.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(RuleController.class).getSimpleName();
            RuleController.Companion.getInstance(context).addRule(new ActivityRule.Builder(SetsKt.setOf(new ActivityFilter(new ComponentName(context, (Class<?>) InMobiAdActivity.class), (String) null))).setAlwaysExpand(true).build());
        } catch (NoClassDefFoundError unused2) {
        }
        try {
            C3323r1.f2477a.m2377c();
            C3323r1.m2361a();
        } catch (Exception unused3) {
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
        }
        C2864Lb.f1237a.m1323a(context, "10.8.3");
        f1554b = true;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m1831c() {
        try {
            Reflection.getOrCreateKotlinClass(CustomTabsClient.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(Omid.class).getSimpleName();
            return false;
        } catch (NoClassDefFoundError unused) {
            return true;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1832e(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        C3188i1.f2165a.m2239a(context, f1555c);
    }

    /* JADX INFO: renamed from: a */
    public final void m1829a(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            C2864Lb c2864Lb = C2864Lb.f1237a;
            if (c2864Lb.m1322a(context) == null || !Intrinsics.areEqual(c2864Lb.m1322a(context), "10.8.3")) {
                ExecutorC2919P6 executorC2919P6 = (ExecutorC2919P6) AbstractC3251m4.f2321d.getValue();
                Runnable runnable = new Runnable() { // from class: com.inmobi.media.Tc$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2981Tc.m1827b(context);
                    }
                };
                executorC2919P6.getClass();
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                executorC2919P6.f1374a.post(runnable);
                c2864Lb.m1324a(context, AbstractC3341s4.m2401b(context));
                C2849Kb c2849Kb = C2849Kb.f1171a;
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                c2849Kb.m1271a(applicationContext);
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1830c(final Context context) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        String string7;
        String string8;
        String string9;
        int i;
        Intrinsics.checkNotNullParameter(context, "context");
        if (f1554b) {
            return;
        }
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        C2810I2.m1162a();
        C3199ic.m2249c();
        C2835Jc.f1140a.m1200a();
        AppSetIdInfo appSetIdInfo = AbstractC3128e1.f2038a;
        Lazy lazy = AbstractC3267n5.f2378a;
        C2751E3.f962a.m1036v();
        int i2 = AbstractC3107ca.f1950a;
        Context contextM1254d = C2849Kb.m1254d();
        int i3 = Integer.MIN_VALUE;
        if (i2 != Integer.MIN_VALUE) {
            AbstractC3107ca.f1950a = i2;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2099a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_age", i2, false, 4, (Object) null);
            }
        }
        String str = AbstractC3107ca.f1952c;
        Context contextM1254d2 = C2849Kb.m1254d();
        if (str != null) {
            AbstractC3107ca.f1952c = str;
            if (contextM1254d2 != null) {
                ConcurrentHashMap concurrentHashMap2 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d2, "user_info_store"), "user_age_group", str, false, 4, (Object) null);
            }
        }
        String str2 = AbstractC3107ca.f1953d;
        Context contextM1254d3 = C2849Kb.m1254d();
        AbstractC3107ca.f1953d = str2;
        if (contextM1254d3 != null && str2 != null) {
            ConcurrentHashMap concurrentHashMap3 = C3133e6.f2044b;
            C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d3, "user_info_store"), "user_area_code", str2, false, 4, (Object) null);
        }
        String str3 = AbstractC3107ca.f1954e;
        Context contextM1254d4 = C2849Kb.m1254d();
        if (str3 != null) {
            AbstractC3107ca.f1954e = str3;
            if (contextM1254d4 != null) {
                ConcurrentHashMap concurrentHashMap4 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d4, "user_info_store"), "user_post_code", str3, false, 4, (Object) null);
            }
        }
        String str4 = AbstractC3107ca.f1955f;
        Context contextM1254d5 = C2849Kb.m1254d();
        if (str4 != null) {
            AbstractC3107ca.f1955f = str4;
            if (contextM1254d5 != null) {
                ConcurrentHashMap concurrentHashMap5 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d5, "user_info_store"), "user_city_code", str4, false, 4, (Object) null);
            }
        }
        String str5 = AbstractC3107ca.f1956g;
        Context contextM1254d6 = C2849Kb.m1254d();
        if (str5 != null) {
            AbstractC3107ca.f1956g = str5;
            if (contextM1254d6 != null) {
                ConcurrentHashMap concurrentHashMap6 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d6, "user_info_store"), "user_state_code", str5, false, 4, (Object) null);
            }
        }
        String str6 = AbstractC3107ca.f1957h;
        Context contextM1254d7 = C2849Kb.m1254d();
        if (str6 != null) {
            AbstractC3107ca.f1957h = str6;
            if (contextM1254d7 != null) {
                ConcurrentHashMap concurrentHashMap7 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d7, "user_info_store"), "user_country_code", str6, false, 4, (Object) null);
            }
        }
        int i4 = AbstractC3107ca.f1958i;
        Context contextM1254d8 = C2849Kb.m1254d();
        if (i4 != Integer.MIN_VALUE) {
            AbstractC3107ca.f1958i = i4;
            if (contextM1254d8 != null) {
                ConcurrentHashMap concurrentHashMap8 = C3133e6.f2044b;
                C3133e6.m2099a(AbstractC3118d6.m2058a(contextM1254d8, "user_info_store"), "user_yob", i4, false, 4, (Object) null);
            }
        }
        String str7 = AbstractC3107ca.f1959j;
        Context contextM1254d9 = C2849Kb.m1254d();
        if (str7 != null) {
            AbstractC3107ca.f1959j = str7;
            if (contextM1254d9 != null) {
                ConcurrentHashMap concurrentHashMap9 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d9, "user_info_store"), AuthenticationTokenClaims.JSON_KEY_USER_GENDER, str7, false, 4, (Object) null);
            }
        }
        String str8 = AbstractC3107ca.f1960k;
        Context contextM1254d10 = C2849Kb.m1254d();
        if (str8 != null) {
            AbstractC3107ca.f1960k = str8;
            if (contextM1254d10 != null) {
                ConcurrentHashMap concurrentHashMap10 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d10, "user_info_store"), "user_education", str8, false, 4, (Object) null);
            }
        }
        String str9 = AbstractC3107ca.f1961l;
        Context contextM1254d11 = C2849Kb.m1254d();
        if (str9 != null) {
            AbstractC3107ca.f1961l = str9;
            if (contextM1254d11 != null) {
                ConcurrentHashMap concurrentHashMap11 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d11, "user_info_store"), "user_language", str9, false, 4, (Object) null);
            }
        }
        String str10 = AbstractC3107ca.f1962m;
        Context contextM1254d12 = C2849Kb.m1254d();
        if (str10 != null) {
            AbstractC3107ca.f1962m = str10;
            if (contextM1254d12 != null) {
                ConcurrentHashMap concurrentHashMap12 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d12, "user_info_store"), "user_interest", str10, false, 4, (Object) null);
            }
        }
        Location location = AbstractC3107ca.f1963n;
        Context contextM1254d13 = C2849Kb.m1254d();
        if (location != null) {
            AbstractC3107ca.f1963n = location;
            if (contextM1254d13 != null) {
                String string10 = new StringBuilder().append(location.getLatitude()).append(',').append(location.getLongitude()).append(',').append((int) location.getAccuracy()).append(',').append(location.getTime()).toString();
                ConcurrentHashMap concurrentHashMap13 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d13, "user_info_store"), AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, string10, false, 4, (Object) null);
            }
        }
        if (AbstractC3107ca.f1950a == Integer.MIN_VALUE) {
            Context contextM1254d14 = C2849Kb.m1254d();
            if (contextM1254d14 == null) {
                i = Integer.MIN_VALUE;
            } else {
                ConcurrentHashMap concurrentHashMap14 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d14, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age", "key");
                i = c3133e6M2058a.f2045a.getInt("user_age", Integer.MIN_VALUE);
            }
            AbstractC3107ca.f1950a = i;
        }
        String string11 = null;
        if (AbstractC3107ca.f1952c == null) {
            Context contextM1254d15 = C2849Kb.m1254d();
            if (contextM1254d15 == null) {
                string9 = null;
            } else {
                ConcurrentHashMap concurrentHashMap15 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a2 = AbstractC3118d6.m2058a(contextM1254d15, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_group", "key");
                string9 = c3133e6M2058a2.f2045a.getString("user_age_group", null);
            }
            AbstractC3107ca.f1952c = string9;
        }
        if (AbstractC3107ca.f1953d == null) {
            Context contextM1254d16 = C2849Kb.m1254d();
            if (contextM1254d16 == null) {
                string8 = null;
            } else {
                ConcurrentHashMap concurrentHashMap16 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a3 = AbstractC3118d6.m2058a(contextM1254d16, "user_info_store");
                Intrinsics.checkNotNullParameter("user_area_code", "key");
                string8 = c3133e6M2058a3.f2045a.getString("user_area_code", null);
            }
            AbstractC3107ca.f1953d = string8;
        }
        if (AbstractC3107ca.f1954e == null) {
            Context contextM1254d17 = C2849Kb.m1254d();
            if (contextM1254d17 == null) {
                string7 = null;
            } else {
                ConcurrentHashMap concurrentHashMap17 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a4 = AbstractC3118d6.m2058a(contextM1254d17, "user_info_store");
                Intrinsics.checkNotNullParameter("user_post_code", "key");
                string7 = c3133e6M2058a4.f2045a.getString("user_post_code", null);
            }
            AbstractC3107ca.f1954e = string7;
        }
        if (AbstractC3107ca.f1955f == null) {
            Context contextM1254d18 = C2849Kb.m1254d();
            if (contextM1254d18 == null) {
                string6 = null;
            } else {
                ConcurrentHashMap concurrentHashMap18 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a5 = AbstractC3118d6.m2058a(contextM1254d18, "user_info_store");
                Intrinsics.checkNotNullParameter("user_city_code", "key");
                string6 = c3133e6M2058a5.f2045a.getString("user_city_code", null);
            }
            AbstractC3107ca.f1955f = string6;
        }
        if (AbstractC3107ca.f1956g == null) {
            Context contextM1254d19 = C2849Kb.m1254d();
            if (contextM1254d19 == null) {
                string5 = null;
            } else {
                ConcurrentHashMap concurrentHashMap19 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a6 = AbstractC3118d6.m2058a(contextM1254d19, "user_info_store");
                Intrinsics.checkNotNullParameter("user_state_code", "key");
                string5 = c3133e6M2058a6.f2045a.getString("user_state_code", null);
            }
            AbstractC3107ca.f1956g = string5;
        }
        if (AbstractC3107ca.f1957h == null) {
            Context contextM1254d20 = C2849Kb.m1254d();
            if (contextM1254d20 == null) {
                string4 = null;
            } else {
                ConcurrentHashMap concurrentHashMap20 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a7 = AbstractC3118d6.m2058a(contextM1254d20, "user_info_store");
                Intrinsics.checkNotNullParameter("user_country_code", "key");
                string4 = c3133e6M2058a7.f2045a.getString("user_country_code", null);
            }
            AbstractC3107ca.f1957h = string4;
        }
        if (AbstractC3107ca.f1958i == Integer.MIN_VALUE) {
            Context contextM1254d21 = C2849Kb.m1254d();
            if (contextM1254d21 != null) {
                ConcurrentHashMap concurrentHashMap21 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a8 = AbstractC3118d6.m2058a(contextM1254d21, "user_info_store");
                Intrinsics.checkNotNullParameter("user_yob", "key");
                i3 = c3133e6M2058a8.f2045a.getInt("user_yob", Integer.MIN_VALUE);
            }
            AbstractC3107ca.f1958i = i3;
        }
        if (AbstractC3107ca.f1959j == null) {
            Context contextM1254d22 = C2849Kb.m1254d();
            if (contextM1254d22 == null) {
                string3 = null;
            } else {
                ConcurrentHashMap concurrentHashMap22 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a9 = AbstractC3118d6.m2058a(contextM1254d22, "user_info_store");
                Intrinsics.checkNotNullParameter(AuthenticationTokenClaims.JSON_KEY_USER_GENDER, "key");
                string3 = c3133e6M2058a9.f2045a.getString(AuthenticationTokenClaims.JSON_KEY_USER_GENDER, null);
            }
            AbstractC3107ca.f1959j = string3;
        }
        if (AbstractC3107ca.f1960k == null) {
            Context contextM1254d23 = C2849Kb.m1254d();
            if (contextM1254d23 == null) {
                string2 = null;
            } else {
                ConcurrentHashMap concurrentHashMap23 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a10 = AbstractC3118d6.m2058a(contextM1254d23, "user_info_store");
                Intrinsics.checkNotNullParameter("user_education", "key");
                string2 = c3133e6M2058a10.f2045a.getString("user_education", null);
            }
            AbstractC3107ca.f1960k = string2;
        }
        if (AbstractC3107ca.f1961l == null) {
            Context contextM1254d24 = C2849Kb.m1254d();
            if (contextM1254d24 == null) {
                string = null;
            } else {
                ConcurrentHashMap concurrentHashMap24 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a11 = AbstractC3118d6.m2058a(contextM1254d24, "user_info_store");
                Intrinsics.checkNotNullParameter("user_language", "key");
                string = c3133e6M2058a11.f2045a.getString("user_language", null);
            }
            AbstractC3107ca.f1961l = string;
        }
        if (AbstractC3107ca.f1962m == null) {
            Context contextM1254d25 = C2849Kb.m1254d();
            if (contextM1254d25 != null) {
                ConcurrentHashMap concurrentHashMap25 = C3133e6.f2044b;
                C3133e6 c3133e6M2058a12 = AbstractC3118d6.m2058a(contextM1254d25, "user_info_store");
                Intrinsics.checkNotNullParameter("user_interest", "key");
                string11 = c3133e6M2058a12.f2045a.getString("user_interest", null);
            }
            AbstractC3107ca.f1962m = string11;
        }
        AbstractC3107ca.m2049b();
        AbstractC3107ca.m2050c();
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Tc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2981Tc.m1828d(context);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public static void m1826b() {
        try {
            C2835Jc.f1140a.m1200a();
            AppSetIdInfo appSetIdInfo = AbstractC3128e1.f2038a;
            LinkedHashMap linkedHashMap = C2840K2.f1150a;
            C2810I2.m1162a();
            C3369u2.f2627a.m2488h();
            C3199ic.m2249c();
            C2939Qb.f1485a.m1749a();
            C2776Fd c2776Fd = C2776Fd.f1039a;
            C3323r1.f2477a.m2377c();
            EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
            C2758Ea.f1003c.set(true);
            C2758Ea.m1055b();
            C2849Kb.m1256f().m2215a(new int[]{2, 1, 100, Opcodes.DCMPL, Opcodes.FCMPG, Opcodes.DCMPG}, C2758Ea.f1007g);
            C3402w5.f2709a.m2552a();
            C3199ic.m2248b("SessionStarted", new HashMap(), EnumC3259mc.f2349a);
            ConcurrentHashMap concurrentHashMap = C3109cc.f1966a;
            C3109cc.m2056b();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            AbstractC2814I6.m1170a((byte) 2, "Tc", "SDK encountered unexpected error while starting internal components");
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1824a() {
        try {
            LinkedHashMap linkedHashMap = C2840K2.f1150a;
            if (C2840K2.f1152c.getAndSet(false)) {
                Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
                ((HandlerC2750E2) C2840K2.f1151b.getValue()).sendEmptyMessage(5);
            }
            C3199ic.f2196d.set(false);
            C3161g4 c3161g4 = C3199ic.f2198f;
            if (c3161g4 != null) {
                ScheduledExecutorService scheduledExecutorService = c3161g4.f2095h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c3161g4.f2095h = null;
                c3161g4.f2092e.set(false);
                c3161g4.f2093f.set(true);
                c3161g4.f2094g.clear();
                c3161g4.f2096i = null;
            }
            C3199ic.f2198f = null;
            C3199ic.f2201i = null;
            C2849Kb.m1256f().m2214a(C3199ic.f2200h);
            synchronized (C2939Qb.f1485a) {
                Intrinsics.checkNotNullExpressionValue("Qb", "TAG");
                C3433y6 c3433y6 = C3433y6.f2760a;
                if (C3433y6.m2617c()) {
                    LocationManager locationManager = C3433y6.f2761b;
                    if (locationManager != null) {
                        locationManager.removeUpdates(c3433y6);
                    }
                    GoogleApiClient googleApiClient = C3433y6.f2763d;
                    if (googleApiClient != null) {
                        googleApiClient.disconnect();
                    }
                }
                C3433y6.f2763d = null;
            }
            C3323r1 c3323r1 = C3323r1.f2477a;
            C3323r1.f2486j.set(true);
            C3323r1.m2371d();
            EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
            C2758Ea.f1003c.set(false);
            C2849Kb.m1256f().m2214a(C2758Ea.f1007g);
            C2758Ea.f1002b = null;
            C2691A3 c2691a3 = C3402w5.f2711c;
            if (c2691a3 != null) {
                Iterator it = c2691a3.f820c.iterator();
                while (it.hasNext()) {
                    ((AbstractC3445z3) it.next()).mo2012b();
                }
            }
            C3163g6 c3163g6 = C3402w5.f2712d;
            C3161g4 c3161g42 = c3163g6.f2100b;
            if (c3161g42 != null) {
                ScheduledExecutorService scheduledExecutorService2 = c3161g42.f2095h;
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdownNow();
                }
                c3161g42.f2095h = null;
                c3161g42.f2092e.set(false);
                c3161g42.f2093f.set(true);
                c3161g42.f2094g.clear();
                c3161g42.f2096i = null;
            }
            c3163g6.f2100b = null;
            C2849Kb.m1256f().m2214a(c3163g6.f2102d);
            ConcurrentHashMap concurrentHashMap = C3109cc.f1966a;
            C3109cc.m2053a();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "Tc", "SDK encountered unexpected error while stopping internal components");
        }
    }
}
