package com.inmobi.media;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.t9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3361t9 {

    /* JADX INFO: renamed from: a */
    public final Context f2616a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2617b;

    /* JADX INFO: renamed from: c */
    public final String f2618c;

    /* JADX INFO: renamed from: d */
    public final boolean f2619d;

    /* JADX INFO: renamed from: e */
    public final SignalsConfig.NovatiqConfig f2620e;

    public C3361t9(Context context, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f2616a = context;
        this.f2617b = interfaceC3147f5;
        this.f2618c = "";
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        SignalsConfig.NovatiqConfig novatiqConfig = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getNovatiqConfig();
        this.f2620e = novatiqConfig;
        Intrinsics.checkNotNullParameter(context, "context");
        if (novatiqConfig.getIsNovatiqEnabled()) {
            Object systemService = context.getSystemService("phone");
            TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
            String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
            String str = networkOperatorName != null ? networkOperatorName : "";
            List<String> carrierNames = novatiqConfig.getCarrierNames();
            if (!(carrierNames instanceof Collection) || !carrierNames.isEmpty()) {
                Iterator<T> it = carrierNames.iterator();
                while (it.hasNext()) {
                    if (StringsKt.contains((CharSequence) str, (CharSequence) it.next(), true)) {
                        try {
                            Context context2 = this.f2616a;
                            Intrinsics.checkNotNullParameter(context2, "context");
                            String str2 = StringsKt.replace$default(context2.getPackageManager().getApplicationLabel(context2.getApplicationInfo()).toString(), ' ', '_', false, 4, (Object) null) + "_app";
                            this.f2619d = true;
                            StringBuilder sb = new StringBuilder();
                            Random random = new Random();
                            for (int i = 0; i < 40; i++) {
                                char cCharAt = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx".charAt(i);
                                if (cCharAt == 'x') {
                                    sb.append(Character.forDigit(random.nextInt(16), 16));
                                } else {
                                    sb.append(cCharAt);
                                }
                            }
                            String string = sb.toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            this.f2618c = string;
                            new C3391v9(new C3376u9(string, str2, this.f2620e), this.f2617b).m2286a(new C3346s9(this));
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                }
            }
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f2617b;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a("NovatiqDataHandler", "Novatiq disabled.. skipping");
        }
    }
}
