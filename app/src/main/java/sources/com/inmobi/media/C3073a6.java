package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.a6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3073a6 extends C3241l9 {

    /* JADX INFO: renamed from: y */
    public final AdQualityResult f1838y;

    /* JADX INFO: renamed from: z */
    public final AdConfig.AdQualityConfig f1839z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3073a6(AdQualityResult result, C2850Kc uidMap, AdConfig.AdQualityConfig config) {
        super("POST", result.getBeaconUrl(), uidMap, false, (InterfaceC3147f5) null, "application/json", 64);
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(uidMap, "uidMap");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f1838y = result;
        this.f1839z = config;
    }

    @Override // com.inmobi.media.C3241l9
    /* JADX INFO: renamed from: f */
    public final void mo1146f() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
        Intrinsics.checkNotNullParameter("preparing beacon request", "message");
        Log.i("JsonBeaconRequest", "preparing beacon request");
        this.f2293t = false;
        this.f2294u = false;
        this.f2297x = false;
        this.f2295v = false;
        super.mo1146f();
        Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
        Intrinsics.checkNotNullParameter("getScreenshot", "message");
        Log.i("JsonBeaconRequest", "getScreenshot");
        if (this.f1838y.getImageLocation().length() > 0) {
            Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
            Intrinsics.checkNotNullParameter("screen shot image found in DB", "message");
            Log.i("JsonBeaconRequest", "screen shot image found in DB");
            try {
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(this.f1838y.getImageLocation());
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                if (bitmapDecodeFile != null) {
                    bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                if (byteArray.length != 0 && (jSONObject2 = this.f2285l) != null) {
                    jSONObject2.put("screenshotImageByte", Base64.encodeToString(byteArray, 0));
                }
            } catch (FileNotFoundException e) {
                Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
                Intrinsics.checkNotNullParameter("image file not found...", "message");
                Log.e("JsonBeaconRequest", "image file not found...", e);
                Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
                Intrinsics.checkNotNullParameter("result produced no screenshot", "message");
                Log.i("JsonBeaconRequest", "result produced no screenshot");
            }
        } else {
            Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
            Intrinsics.checkNotNullParameter("result produced no screenshot", "message");
            Log.i("JsonBeaconRequest", "result produced no screenshot");
        }
        Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
        Intrinsics.checkNotNullParameter("getExtras", "message");
        Log.i("JsonBeaconRequest", "getExtras");
        try {
        } catch (JSONException e2) {
            Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
            Intrinsics.checkNotNullParameter("error while adding extras", "message");
            Log.e("JsonBeaconRequest", "error while adding extras", e2);
        }
        if (AbstractC3429y2.m2607a(this.f1838y.getExtras())) {
            String extras = this.f1838y.getExtras();
            if (extras != null && (jSONObject = this.f2285l) != null) {
                jSONObject.put("templateInfo", new JSONObject(extras));
            }
        } else {
            Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
            Intrinsics.checkNotNullParameter("result has no extras", "message");
            Log.i("JsonBeaconRequest", "result has no extras");
        }
        Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
        Intrinsics.checkNotNullParameter("getExtras", "message");
        Log.i("JsonBeaconRequest", "getExtras");
        if (!AbstractC3429y2.m2607a(this.f1838y.getSdkModelResult())) {
            Intrinsics.checkNotNullParameter("JsonBeaconRequest", "tag");
            Intrinsics.checkNotNullParameter("result has no model info", "message");
            Log.i("JsonBeaconRequest", "result has no model info");
        } else {
            JSONObject jSONObject3 = this.f2285l;
            if (jSONObject3 != null) {
                jSONObject3.put("sdkModelInfo", this.f1838y.getSdkModelResult());
            }
        }
    }
}
