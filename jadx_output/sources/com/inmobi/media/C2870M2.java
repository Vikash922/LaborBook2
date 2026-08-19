package com.inmobi.media;

import android.content.ContentValues;
import com.inmobi.commons.core.configs.Config;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.M2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2870M2 extends AbstractC2942R1 {
    public C2870M2() {
        super("config_db", "(account_id TEXT NOT NULL,config_value TEXT NOT NULL,config_type TEXT NOT NULL,update_ts INTEGER DEFAULT 0,UNIQUE(account_id,config_type))");
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: a */
    public final Object mo836a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("config_value");
        if (asString == null) {
            return null;
        }
        String asString2 = contentValues.getAsString("account_id");
        Long asLong = contentValues.getAsLong("update_ts");
        C2720C2 c2720c2 = Config.Companion;
        String asString3 = contentValues.getAsString("config_type");
        Intrinsics.checkNotNullExpressionValue(asString3, "getAsString(...)");
        JSONObject jSONObject = new JSONObject(asString);
        Intrinsics.checkNotNull(asLong);
        long jLongValue = asLong.longValue();
        c2720c2.getClass();
        return C2720C2.m891a(asString3, jSONObject, asString2, jLongValue);
    }

    @Override // com.inmobi.media.AbstractC2942R1
    /* JADX INFO: renamed from: b */
    public final ContentValues mo838b(Object obj) {
        Config config = (Config) obj;
        Intrinsics.checkNotNullParameter(config, "config");
        ContentValues contentValues = new ContentValues();
        contentValues.put("account_id", config.getAccountId$media_release());
        contentValues.put("config_value", config.toJson().toString());
        contentValues.put("config_type", config.getType());
        contentValues.put("update_ts", Long.valueOf(config.getLastUpdateTimeStamp()));
        return contentValues;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1333b(String type, String accountId) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        boolean z = false;
        try {
            z = !C3385v3.m2505b(this.f1489a, null, "account_id=? AND config_type=?", new String[]{accountId, type}, null, null, null, null).isEmpty();
        } catch (Exception unused) {
        }
        return !z;
    }

    /* JADX INFO: renamed from: a */
    public final long m1332a(String type, String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        String[] strArr = {str, type};
        C2855L2 transform = C2855L2.f1186a;
        Intrinsics.checkNotNullParameter(transform, "transform");
        Object objInvoke = null;
        try {
            List<ContentValues> listM2505b = C3385v3.m2505b(this.f1489a, null, "account_id=? AND config_type=?", strArr, null, null, null, null);
            if (!listM2505b.isEmpty()) {
                objInvoke = transform.invoke(listM2505b.get(0));
            }
        } catch (Exception unused) {
        }
        Long l = (Long) objInvoke;
        long jLongValue = l != null ? l.longValue() : 0L;
        Intrinsics.checkNotNullExpressionValue("M2", "TAG");
        return jLongValue;
    }
}
