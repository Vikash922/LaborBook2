package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Wb implements InterfaceC0433o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f274a;
    public final String b;

    public Wb(String location, byte[] imageBytes) {
        Intrinsics.checkNotNullParameter(imageBytes, "imageBytes");
        Intrinsics.checkNotNullParameter(location, "location");
        this.f274a = imageBytes;
        this.b = location;
    }

    @Override // com.inmobi.media.InterfaceC0433o0
    public final Object a() {
        byte[] bArr = this.f274a;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Intrinsics.checkNotNull(bitmapDecodeByteArray);
        StringBuilder sb = new StringBuilder();
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String string2 = sb.append(string).append(".jpg").toString();
        File file = new File(this.b);
        if (!file.exists()) {
            file.mkdirs();
        }
        bitmapDecodeByteArray.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(new File(this.b + '/' + string2)));
        Intrinsics.checkNotNullParameter("StoreProcess", "tag");
        Intrinsics.checkNotNullParameter("screenshot file saved", "message");
        Log.i("StoreProcess", "screenshot file saved");
        return this.b + '/' + string2;
    }
}
