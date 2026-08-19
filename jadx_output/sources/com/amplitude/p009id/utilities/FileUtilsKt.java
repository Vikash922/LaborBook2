package com.amplitude.p009id.utilities;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, m2722d2 = {"createDirectory", "", FirebaseAnalytics.Param.LOCATION, "Ljava/io/File;", "id"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class FileUtilsKt {
    public static final void createDirectory(File location) throws IOException {
        Intrinsics.checkNotNullParameter(location, "location");
        if (!location.exists() && !location.mkdirs() && !location.isDirectory()) {
            throw new IOException(Intrinsics.stringPlus("Could not create directory at ", location));
        }
    }
}
