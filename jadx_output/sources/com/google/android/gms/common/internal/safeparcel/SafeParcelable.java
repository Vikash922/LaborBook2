package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
/* JADX INFO: loaded from: classes.dex */
public interface SafeParcelable extends Parcelable {
    public static final String NULL = "SAFE_PARCELABLE_NULL_STRING";

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface Class {
        String creator();

        boolean creatorIsFinal() default true;

        boolean doNotParcelTypeDefaultValues() default false;

        boolean validate() default false;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface Constructor {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface Field {
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        /* JADX INFO: renamed from: id */
        int m139id();

        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface Indicator {
        String getter() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface Param {
        /* JADX INFO: renamed from: id */
        int m140id();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface RemovedParam {
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        /* JADX INFO: renamed from: id */
        int m141id();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface Reserved {
        int[] value();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
    /* JADX INFO: loaded from: classes3.dex */
    public @interface VersionField {
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        /* JADX INFO: renamed from: id */
        int m142id();

        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }
}
