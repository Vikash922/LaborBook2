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

/* JADX INFO: renamed from: com.inmobi.media.t9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0513t9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f492a;
    public final InterfaceC0298f5 b;
    public final String c;
    public final boolean d;
    public final SignalsConfig.NovatiqConfig e;

    public C0513t9(Context context, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f492a = context;
        this.b = interfaceC0298f5;
        this.c = "";
        LinkedHashMap linkedHashMap = K2.f154a;
        SignalsConfig.NovatiqConfig novatiqConfig = ((SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getNovatiqConfig();
        this.e = novatiqConfig;
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
                            Context context2 = this.f492a;
                            Intrinsics.checkNotNullParameter(context2, "context");
                            String str2 = StringsKt.replace$default(context2.getPackageManager().getApplicationLabel(context2.getApplicationInfo()).toString(), ' ', '_', false, 4, (Object) null) + "_app";
                            this.d = true;
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
                            this.c = string;
                            new C0541v9(new C0527u9(string, str2, this.e), this.b).a(new C0499s9(this));
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                }
            }
        }
        InterfaceC0298f5 interfaceC0298f52 = this.b;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a("NovatiqDataHandler", "Novatiq disabled.. skipping");
        }
    }
}
