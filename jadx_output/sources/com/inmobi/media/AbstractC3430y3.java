package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: com.inmobi.media.y3 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3430y3 {

    /* JADX INFO: renamed from: a */
    public static final HashMap f2754a = new HashMap();

    /* JADX INFO: renamed from: a */
    public static Config m2611a(String str, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        String strM2612b = m2612b(str, type);
        HashMap map = f2754a;
        Object objM890a = map.get(strM2612b);
        if (objM890a == null) {
            Config.Companion.getClass();
            objM890a = C2720C2.m890a(type, str);
            map.put(strM2612b, objM890a);
        }
        return (Config) objM890a;
    }

    /* JADX INFO: renamed from: b */
    public static String m2612b(String str, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return str + SignatureVisitor.SUPER + type;
    }
}
