package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: com.inmobi.media.y3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0577y3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f530a = new HashMap();

    public static Config a(String str, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        String strB = b(str, type);
        HashMap map = f530a;
        Object objA = map.get(strB);
        if (objA == null) {
            Config.Companion.getClass();
            objA = C2.a(type, str);
            map.put(strB, objA);
        }
        return (Config) objA;
    }

    public static String b(String str, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return str + SignatureVisitor.SUPER + type;
    }
}
