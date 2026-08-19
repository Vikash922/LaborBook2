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

/* JADX INFO: loaded from: classes6.dex */
public final class Tc {
    public static boolean b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Tc f249a = new Tc();
    public static final Sc c = new Sc();

    public static final /* synthetic */ void a(Tc tc) {
        tc.getClass();
        b();
    }

    public static final void b(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            WebView webView = new WebView(context);
            webView.setWebViewClient(new Id());
            webView.clearCache(true);
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public static final void d(Context context) {
        C0284e6 c0284e6A;
        String string;
        Context contextD;
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(context, "$context");
        Lb lb = Lb.f171a;
        if (lb.b(context) && AbstractC0494s4.a(context).isEmpty()) {
            lb.a(context, false);
        }
        C0249c3 c0249c3 = C0249c3.f318a;
        Intrinsics.checkNotNull("c3");
        LinkedList linkedList = new LinkedList(R1.a((Y2) Db.d.getValue(), null, null, null, null, null, null, 63));
        C0249c3.b = linkedList;
        Object objClone = linkedList.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        C0249c3.c = (LinkedList) objClone;
        ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
        Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
        Intrinsics.checkNotNullParameter("starting", "message");
        Log.i("AdQualityComponent", "starting");
        if (C0277e0.d == null) {
            C0277e0.d = new C0246c0(C0277e0.e);
        }
        C0246c0 c0246c0 = C0277e0.d;
        if (c0246c0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            c0246c0 = null;
        }
        if (c0246c0.b.get()) {
            Intrinsics.checkNotNullParameter("AdQualityComponent", "tag");
            Intrinsics.checkNotNullParameter("already started", "message");
            Log.i("AdQualityComponent", "already started");
        } else {
            C0246c0 c0246c02 = C0277e0.d;
            if (c0246c02 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("executor");
                c0246c02 = null;
            }
            c0246c02.a();
        }
        AbstractC0523u5.b();
        AbstractC0523u5.a();
        O3 o3 = N3.f189a;
        LinkedHashMap linkedHashMap = K2.f154a;
        AdConfig adConfig = (AdConfig) V4.a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        C0448p0 adReqDeprecateChecker = adConfig.getAdReqDeprecateChecker();
        N3.e = adReqDeprecateChecker != null ? adReqDeprecateChecker.a(true) : true;
        N3.e();
        if (adConfig.getRendering().getEnableImmersive()) {
            if (N3.i && (contextD = Kb.d()) != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6 c0284e6A2 = AbstractC0268d6.a(contextD, "display_info_store");
                Intrinsics.checkNotNullParameter("safe_area", "key");
                String string2 = c0284e6A2.f340a.getString("safe_area", null);
                if (string2 != null) {
                    try {
                        jSONObject = new JSONObject(string2);
                    } catch (JSONException unused) {
                        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                        jSONObject = null;
                    }
                    N3.f = jSONObject;
                    Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                    Objects.toString(N3.f);
                } else {
                    jSONObject = null;
                    N3.f = jSONObject;
                    Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                    Objects.toString(N3.f);
                }
            }
            if (N3.i) {
                if (N3.f() != null) {
                    Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                } else {
                    Context contextD2 = Kb.d();
                    if (contextD2 != null) {
                        ConcurrentHashMap concurrentHashMap2 = C0284e6.b;
                        C0284e6 c0284e6A3 = AbstractC0268d6.a(contextD2, "display_info_store");
                        Intrinsics.checkNotNullParameter("nav_bar_type", "key");
                        int i = c0284e6A3.f340a.getInt("nav_bar_type", -1);
                        Integer numValueOf = Integer.valueOf(i);
                        N3.g = numValueOf;
                        if (i == -1) {
                            numValueOf = null;
                        }
                        N3.g = numValueOf;
                        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
                    }
                }
            }
        }
        String str = C0304fa.f350a;
        try {
            Context contextD3 = Kb.d();
            if (contextD3 != null && C0304fa.c.getPurchases().getInapp()) {
                Context contextD4 = Kb.d();
                if (contextD4 != null) {
                    ConcurrentHashMap concurrentHashMap3 = C0284e6.b;
                    c0284e6A = AbstractC0268d6.a(contextD4, "purchase_store");
                } else {
                    c0284e6A = null;
                }
                if (c0284e6A != null) {
                    Intrinsics.checkNotNullParameter("purchase_pref", "key");
                    string = c0284e6A.f340a.getString("purchase_pref", null);
                } else {
                    string = null;
                }
                if (string != null) {
                    C0304fa.f350a = string;
                }
                if (C0304fa.a(contextD3)) {
                    C0304fa.d = 1;
                    C0556wa c0556wa = new C0556wa();
                    C0304fa.b = c0556wa;
                    c0556wa.a(contextD3, new C0272da());
                }
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
        b();
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Reflection.getOrCreateKotlinClass(ActivityFilter.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(ActivityRule.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(RuleController.class).getSimpleName();
            RuleController.Companion.getInstance(context).addRule(new ActivityRule.Builder(SetsKt.setOf(new ActivityFilter(new ComponentName(context, (Class<?>) InMobiAdActivity.class), (String) null))).setAlwaysExpand(true).build());
        } catch (NoClassDefFoundError unused2) {
        }
        try {
            C0477r1.f467a.c();
            C0477r1.a();
        } catch (Exception unused3) {
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
        }
        Lb.f171a.a(context, "10.8.3");
        b = true;
    }

    public final boolean c() {
        try {
            Reflection.getOrCreateKotlinClass(CustomTabsClient.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(Omid.class).getSimpleName();
            return false;
        } catch (NoClassDefFoundError unused) {
            return true;
        }
    }

    public final void e(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        C0342i1.f381a.a(context, c);
    }

    public final void a(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Lb lb = Lb.f171a;
            if (lb.a(context) == null || !Intrinsics.areEqual(lb.a(context), "10.8.3")) {
                P6 p6 = (P6) AbstractC0407m4.d.getValue();
                Runnable runnable = new Runnable() { // from class: com.inmobi.media.Tc$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Tc.b(context);
                    }
                };
                p6.getClass();
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                p6.f214a.post(runnable);
                lb.a(context, AbstractC0494s4.b(context));
                Kb kb = Kb.f162a;
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                kb.a(applicationContext);
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void c(final Context context) {
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
        if (b) {
            return;
        }
        LinkedHashMap linkedHashMap = K2.f154a;
        I2.a();
        C0353ic.c();
        Jc.f151a.a();
        AppSetIdInfo appSetIdInfo = AbstractC0278e1.f337a;
        Lazy lazy = AbstractC0423n5.f432a;
        E3.f104a.v();
        int i2 = AbstractC0256ca.f322a;
        Context contextD = Kb.d();
        int i3 = Integer.MIN_VALUE;
        if (i2 != Integer.MIN_VALUE) {
            AbstractC0256ca.f322a = i2;
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD, "user_info_store"), "user_age", i2, false, 4, (Object) null);
            }
        }
        String str = AbstractC0256ca.c;
        Context contextD2 = Kb.d();
        if (str != null) {
            AbstractC0256ca.c = str;
            if (contextD2 != null) {
                ConcurrentHashMap concurrentHashMap2 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD2, "user_info_store"), "user_age_group", str, false, 4, (Object) null);
            }
        }
        String str2 = AbstractC0256ca.d;
        Context contextD3 = Kb.d();
        AbstractC0256ca.d = str2;
        if (contextD3 != null && str2 != null) {
            ConcurrentHashMap concurrentHashMap3 = C0284e6.b;
            C0284e6.a(AbstractC0268d6.a(contextD3, "user_info_store"), "user_area_code", str2, false, 4, (Object) null);
        }
        String str3 = AbstractC0256ca.e;
        Context contextD4 = Kb.d();
        if (str3 != null) {
            AbstractC0256ca.e = str3;
            if (contextD4 != null) {
                ConcurrentHashMap concurrentHashMap4 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD4, "user_info_store"), "user_post_code", str3, false, 4, (Object) null);
            }
        }
        String str4 = AbstractC0256ca.f;
        Context contextD5 = Kb.d();
        if (str4 != null) {
            AbstractC0256ca.f = str4;
            if (contextD5 != null) {
                ConcurrentHashMap concurrentHashMap5 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD5, "user_info_store"), "user_city_code", str4, false, 4, (Object) null);
            }
        }
        String str5 = AbstractC0256ca.g;
        Context contextD6 = Kb.d();
        if (str5 != null) {
            AbstractC0256ca.g = str5;
            if (contextD6 != null) {
                ConcurrentHashMap concurrentHashMap6 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD6, "user_info_store"), "user_state_code", str5, false, 4, (Object) null);
            }
        }
        String str6 = AbstractC0256ca.h;
        Context contextD7 = Kb.d();
        if (str6 != null) {
            AbstractC0256ca.h = str6;
            if (contextD7 != null) {
                ConcurrentHashMap concurrentHashMap7 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD7, "user_info_store"), "user_country_code", str6, false, 4, (Object) null);
            }
        }
        int i4 = AbstractC0256ca.i;
        Context contextD8 = Kb.d();
        if (i4 != Integer.MIN_VALUE) {
            AbstractC0256ca.i = i4;
            if (contextD8 != null) {
                ConcurrentHashMap concurrentHashMap8 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD8, "user_info_store"), "user_yob", i4, false, 4, (Object) null);
            }
        }
        String str7 = AbstractC0256ca.j;
        Context contextD9 = Kb.d();
        if (str7 != null) {
            AbstractC0256ca.j = str7;
            if (contextD9 != null) {
                ConcurrentHashMap concurrentHashMap9 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD9, "user_info_store"), AuthenticationTokenClaims.JSON_KEY_USER_GENDER, str7, false, 4, (Object) null);
            }
        }
        String str8 = AbstractC0256ca.k;
        Context contextD10 = Kb.d();
        if (str8 != null) {
            AbstractC0256ca.k = str8;
            if (contextD10 != null) {
                ConcurrentHashMap concurrentHashMap10 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD10, "user_info_store"), "user_education", str8, false, 4, (Object) null);
            }
        }
        String str9 = AbstractC0256ca.l;
        Context contextD11 = Kb.d();
        if (str9 != null) {
            AbstractC0256ca.l = str9;
            if (contextD11 != null) {
                ConcurrentHashMap concurrentHashMap11 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD11, "user_info_store"), "user_language", str9, false, 4, (Object) null);
            }
        }
        String str10 = AbstractC0256ca.m;
        Context contextD12 = Kb.d();
        if (str10 != null) {
            AbstractC0256ca.m = str10;
            if (contextD12 != null) {
                ConcurrentHashMap concurrentHashMap12 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD12, "user_info_store"), "user_interest", str10, false, 4, (Object) null);
            }
        }
        Location location = AbstractC0256ca.n;
        Context contextD13 = Kb.d();
        if (location != null) {
            AbstractC0256ca.n = location;
            if (contextD13 != null) {
                String string10 = new StringBuilder().append(location.getLatitude()).append(',').append(location.getLongitude()).append(',').append((int) location.getAccuracy()).append(',').append(location.getTime()).toString();
                ConcurrentHashMap concurrentHashMap13 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(contextD13, "user_info_store"), AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, string10, false, 4, (Object) null);
            }
        }
        if (AbstractC0256ca.f322a == Integer.MIN_VALUE) {
            Context contextD14 = Kb.d();
            if (contextD14 == null) {
                i = Integer.MIN_VALUE;
            } else {
                ConcurrentHashMap concurrentHashMap14 = C0284e6.b;
                C0284e6 c0284e6A = AbstractC0268d6.a(contextD14, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age", "key");
                i = c0284e6A.f340a.getInt("user_age", Integer.MIN_VALUE);
            }
            AbstractC0256ca.f322a = i;
        }
        String string11 = null;
        if (AbstractC0256ca.c == null) {
            Context contextD15 = Kb.d();
            if (contextD15 == null) {
                string9 = null;
            } else {
                ConcurrentHashMap concurrentHashMap15 = C0284e6.b;
                C0284e6 c0284e6A2 = AbstractC0268d6.a(contextD15, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_group", "key");
                string9 = c0284e6A2.f340a.getString("user_age_group", null);
            }
            AbstractC0256ca.c = string9;
        }
        if (AbstractC0256ca.d == null) {
            Context contextD16 = Kb.d();
            if (contextD16 == null) {
                string8 = null;
            } else {
                ConcurrentHashMap concurrentHashMap16 = C0284e6.b;
                C0284e6 c0284e6A3 = AbstractC0268d6.a(contextD16, "user_info_store");
                Intrinsics.checkNotNullParameter("user_area_code", "key");
                string8 = c0284e6A3.f340a.getString("user_area_code", null);
            }
            AbstractC0256ca.d = string8;
        }
        if (AbstractC0256ca.e == null) {
            Context contextD17 = Kb.d();
            if (contextD17 == null) {
                string7 = null;
            } else {
                ConcurrentHashMap concurrentHashMap17 = C0284e6.b;
                C0284e6 c0284e6A4 = AbstractC0268d6.a(contextD17, "user_info_store");
                Intrinsics.checkNotNullParameter("user_post_code", "key");
                string7 = c0284e6A4.f340a.getString("user_post_code", null);
            }
            AbstractC0256ca.e = string7;
        }
        if (AbstractC0256ca.f == null) {
            Context contextD18 = Kb.d();
            if (contextD18 == null) {
                string6 = null;
            } else {
                ConcurrentHashMap concurrentHashMap18 = C0284e6.b;
                C0284e6 c0284e6A5 = AbstractC0268d6.a(contextD18, "user_info_store");
                Intrinsics.checkNotNullParameter("user_city_code", "key");
                string6 = c0284e6A5.f340a.getString("user_city_code", null);
            }
            AbstractC0256ca.f = string6;
        }
        if (AbstractC0256ca.g == null) {
            Context contextD19 = Kb.d();
            if (contextD19 == null) {
                string5 = null;
            } else {
                ConcurrentHashMap concurrentHashMap19 = C0284e6.b;
                C0284e6 c0284e6A6 = AbstractC0268d6.a(contextD19, "user_info_store");
                Intrinsics.checkNotNullParameter("user_state_code", "key");
                string5 = c0284e6A6.f340a.getString("user_state_code", null);
            }
            AbstractC0256ca.g = string5;
        }
        if (AbstractC0256ca.h == null) {
            Context contextD20 = Kb.d();
            if (contextD20 == null) {
                string4 = null;
            } else {
                ConcurrentHashMap concurrentHashMap20 = C0284e6.b;
                C0284e6 c0284e6A7 = AbstractC0268d6.a(contextD20, "user_info_store");
                Intrinsics.checkNotNullParameter("user_country_code", "key");
                string4 = c0284e6A7.f340a.getString("user_country_code", null);
            }
            AbstractC0256ca.h = string4;
        }
        if (AbstractC0256ca.i == Integer.MIN_VALUE) {
            Context contextD21 = Kb.d();
            if (contextD21 != null) {
                ConcurrentHashMap concurrentHashMap21 = C0284e6.b;
                C0284e6 c0284e6A8 = AbstractC0268d6.a(contextD21, "user_info_store");
                Intrinsics.checkNotNullParameter("user_yob", "key");
                i3 = c0284e6A8.f340a.getInt("user_yob", Integer.MIN_VALUE);
            }
            AbstractC0256ca.i = i3;
        }
        if (AbstractC0256ca.j == null) {
            Context contextD22 = Kb.d();
            if (contextD22 == null) {
                string3 = null;
            } else {
                ConcurrentHashMap concurrentHashMap22 = C0284e6.b;
                C0284e6 c0284e6A9 = AbstractC0268d6.a(contextD22, "user_info_store");
                Intrinsics.checkNotNullParameter(AuthenticationTokenClaims.JSON_KEY_USER_GENDER, "key");
                string3 = c0284e6A9.f340a.getString(AuthenticationTokenClaims.JSON_KEY_USER_GENDER, null);
            }
            AbstractC0256ca.j = string3;
        }
        if (AbstractC0256ca.k == null) {
            Context contextD23 = Kb.d();
            if (contextD23 == null) {
                string2 = null;
            } else {
                ConcurrentHashMap concurrentHashMap23 = C0284e6.b;
                C0284e6 c0284e6A10 = AbstractC0268d6.a(contextD23, "user_info_store");
                Intrinsics.checkNotNullParameter("user_education", "key");
                string2 = c0284e6A10.f340a.getString("user_education", null);
            }
            AbstractC0256ca.k = string2;
        }
        if (AbstractC0256ca.l == null) {
            Context contextD24 = Kb.d();
            if (contextD24 == null) {
                string = null;
            } else {
                ConcurrentHashMap concurrentHashMap24 = C0284e6.b;
                C0284e6 c0284e6A11 = AbstractC0268d6.a(contextD24, "user_info_store");
                Intrinsics.checkNotNullParameter("user_language", "key");
                string = c0284e6A11.f340a.getString("user_language", null);
            }
            AbstractC0256ca.l = string;
        }
        if (AbstractC0256ca.m == null) {
            Context contextD25 = Kb.d();
            if (contextD25 != null) {
                ConcurrentHashMap concurrentHashMap25 = C0284e6.b;
                C0284e6 c0284e6A12 = AbstractC0268d6.a(contextD25, "user_info_store");
                Intrinsics.checkNotNullParameter("user_interest", "key");
                string11 = c0284e6A12.f340a.getString("user_interest", null);
            }
            AbstractC0256ca.m = string11;
        }
        AbstractC0256ca.b();
        AbstractC0256ca.c();
        Kb.a(new Runnable() { // from class: com.inmobi.media.Tc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Tc.d(context);
            }
        });
    }

    public static void b() {
        try {
            Jc.f151a.a();
            AppSetIdInfo appSetIdInfo = AbstractC0278e1.f337a;
            LinkedHashMap linkedHashMap = K2.f154a;
            I2.a();
            C0520u2.f496a.h();
            C0353ic.c();
            Qb.f226a.a();
            Fd fd = Fd.f118a;
            C0477r1.f467a.c();
            B6 b6 = Ea.f109a;
            Ea.c.set(true);
            Ea.b();
            Kb.f().a(new int[]{2, 1, 100, Opcodes.DCMPL, Opcodes.FCMPG, Opcodes.DCMPG}, Ea.g);
            C0551w5.f513a.a();
            C0353ic.b("SessionStarted", new HashMap(), EnumC0415mc.f426a);
            ConcurrentHashMap concurrentHashMap = C0259cc.f324a;
            C0259cc.b();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            I6.a((byte) 2, "Tc", "SDK encountered unexpected error while starting internal components");
        }
    }

    @JvmStatic
    public static final void a() {
        try {
            LinkedHashMap linkedHashMap = K2.f154a;
            if (K2.c.getAndSet(false)) {
                Intrinsics.checkNotNullExpressionValue(K2.f(), "access$getTAG$cp(...)");
                ((E2) K2.b.getValue()).sendEmptyMessage(5);
            }
            C0353ic.d.set(false);
            C0313g4 c0313g4 = C0353ic.f;
            if (c0313g4 != null) {
                ScheduledExecutorService scheduledExecutorService = c0313g4.h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c0313g4.h = null;
                c0313g4.e.set(false);
                c0313g4.f.set(true);
                c0313g4.g.clear();
                c0313g4.i = null;
            }
            C0353ic.f = null;
            C0353ic.i = null;
            Kb.f().a(C0353ic.h);
            synchronized (Qb.f226a) {
                Intrinsics.checkNotNullExpressionValue("Qb", "TAG");
                C0580y6 c0580y6 = C0580y6.f533a;
                if (C0580y6.c()) {
                    LocationManager locationManager = C0580y6.b;
                    if (locationManager != null) {
                        locationManager.removeUpdates(c0580y6);
                    }
                    GoogleApiClient googleApiClient = C0580y6.d;
                    if (googleApiClient != null) {
                        googleApiClient.disconnect();
                    }
                }
                C0580y6.d = null;
            }
            C0477r1 c0477r1 = C0477r1.f467a;
            C0477r1.j.set(true);
            C0477r1.d();
            B6 b6 = Ea.f109a;
            Ea.c.set(false);
            Kb.f().a(Ea.g);
            Ea.b = null;
            A3 a3 = C0551w5.c;
            if (a3 != null) {
                Iterator it = a3.c.iterator();
                while (it.hasNext()) {
                    ((AbstractC0593z3) it.next()).b();
                }
            }
            C0315g6 c0315g6 = C0551w5.d;
            C0313g4 c0313g42 = c0315g6.b;
            if (c0313g42 != null) {
                ScheduledExecutorService scheduledExecutorService2 = c0313g42.h;
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdownNow();
                }
                c0313g42.h = null;
                c0313g42.e.set(false);
                c0313g42.f.set(true);
                c0313g42.g.clear();
                c0313g42.i = null;
            }
            c0315g6.b = null;
            Kb.f().a(c0315g6.d);
            ConcurrentHashMap concurrentHashMap = C0259cc.f324a;
            C0259cc.a();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            Intrinsics.checkNotNullExpressionValue("Tc", "TAG");
            I6.a((byte) 1, "Tc", "SDK encountered unexpected error while stopping internal components");
        }
    }
}
