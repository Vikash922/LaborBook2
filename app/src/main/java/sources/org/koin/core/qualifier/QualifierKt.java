package org.koin.core.qualifier;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: Qualifier.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0011\u0010\u0006\u001a\u00020\u0007\"\u0006\b\u0000\u0010\b\u0018\u0001H\u0086\b\u001a\u000e\u0010\u0006\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0011\u0010\f\u001a\u00020\u0007\"\u0006\b\u0000\u0010\b\u0018\u0001H\u0086\b\u001a$\u0010\f\u001a\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\u001a\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0011\u0010\u0000\u001a\u00020\u0007\"\u0006\b\u0000\u0010\b\u0018\u0001H\u0086\b\u001a$\u0010\u0000\u001a\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\u001a\u000e\u0010\u0000\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\"+\u0010\u0000\u001a\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005*\n\u0010\u000e\"\u00020\u000b2\u00020\u000b¨\u0006\u000f"}, m2722d2 = {"qualifier", "Lorg/koin/core/qualifier/Qualifier;", ExifInterface.LONGITUDE_EAST, "", "getQualifier", "(Ljava/lang/Enum;)Lorg/koin/core/qualifier/Qualifier;", "_q", "Lorg/koin/core/qualifier/TypeQualifier;", "T", "Lorg/koin/core/qualifier/StringQualifier;", "name", "", "named", "enum", "QualifierValue", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class QualifierKt {
    public static final StringQualifier named(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new StringQualifier(name);
    }

    public static final <E extends Enum<E>> Qualifier named(Enum<E> r1) {
        Intrinsics.checkNotNullParameter(r1, "enum");
        return getQualifier(r1);
    }

    public static final StringQualifier qualifier(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new StringQualifier(name);
    }

    public static final <E extends Enum<E>> Qualifier qualifier(Enum<E> r1) {
        Intrinsics.checkNotNullParameter(r1, "enum");
        return getQualifier(r1);
    }

    /* JADX INFO: renamed from: _q */
    public static final StringQualifier m2899_q(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new StringQualifier(name);
    }

    public static final /* synthetic */ TypeQualifier named() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public static final /* synthetic */ TypeQualifier qualifier() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
    }

    /* JADX INFO: renamed from: _q */
    public static final /* synthetic */ TypeQualifier m2900_q() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public static final <E extends Enum<E>> Qualifier getQualifier(Enum<E> r2) {
        Intrinsics.checkNotNullParameter(r2, "<this>");
        String string = r2.toString();
        if (string == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = string.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
        return new StringQualifier(lowerCase);
    }
}
