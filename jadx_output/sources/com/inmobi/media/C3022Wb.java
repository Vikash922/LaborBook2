package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Wb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3022Wb implements InterfaceC3277o0 {

    /* JADX INFO: renamed from: a */
    public final byte[] f1630a;

    /* JADX INFO: renamed from: b */
    public final String f1631b;

    public C3022Wb(String location, byte[] imageBytes) {
        Intrinsics.checkNotNullParameter(imageBytes, "imageBytes");
        Intrinsics.checkNotNullParameter(location, "location");
        this.f1630a = imageBytes;
        this.f1631b = location;
    }

    @Override // com.inmobi.media.InterfaceC3277o0
    /* JADX INFO: renamed from: a */
    public final Object mo1145a() {
        byte[] bArr = this.f1630a;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Intrinsics.checkNotNull(bitmapDecodeByteArray);
        StringBuilder sb = new StringBuilder();
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String string2 = sb.append(string).append(".jpg").toString();
        File file = new File(this.f1631b);
        if (!file.exists()) {
            file.mkdirs();
        }
        bitmapDecodeByteArray.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(new File(this.f1631b + '/' + string2)));
        Intrinsics.checkNotNullParameter("StoreProcess", "tag");
        Intrinsics.checkNotNullParameter("screenshot file saved", "message");
        Log.i("StoreProcess", "screenshot file saved");
        return this.f1631b + '/' + string2;
    }
}
