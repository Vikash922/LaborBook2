package com.amplitude.core.events;

import com.amplitude.common.jvm.ConsoleLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Plan.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B7\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u0006\u0010\r\u001a\u00020\u0000J\r\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0012"}, m2722d2 = {"Lcom/amplitude/core/events/Plan;", "", Plan.AMP_PLAN_BRANCH, "", "source", "version", Plan.AMP_PLAN_VERSION_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBranch", "()Ljava/lang/String;", "getSource", "getVersion", "getVersionId", "clone", "toJSONObject", "Lorg/json/JSONObject;", "toJSONObject$core", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Plan {
    public static final String AMP_PLAN_BRANCH = "branch";
    public static final String AMP_PLAN_SOURCE = "source";
    public static final String AMP_PLAN_VERSION = "version";
    public static final String AMP_PLAN_VERSION_ID = "versionId";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String branch;
    private final String source;
    private final String version;
    private final String versionId;

    public Plan() {
        this(null, null, null, null, 15, null);
    }

    public Plan(String str) {
        this(str, null, null, null, 14, null);
    }

    public Plan(String str, String str2) {
        this(str, str2, null, null, 12, null);
    }

    public Plan(String str, String str2, String str3) {
        this(str, str2, str3, null, 8, null);
    }

    public Plan(String str, String str2, String str3, String str4) {
        this.branch = str;
        this.source = str2;
        this.version = str3;
        this.versionId = str4;
    }

    public /* synthetic */ Plan(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }

    public final String getBranch() {
        return this.branch;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getVersion() {
        return this.version;
    }

    public final String getVersionId() {
        return this.versionId;
    }

    public final JSONObject toJSONObject$core() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.branch;
            if (str != null && str.length() != 0) {
                jSONObject.put(AMP_PLAN_BRANCH, this.branch);
            }
            String str2 = this.source;
            if (str2 != null && str2.length() != 0) {
                jSONObject.put("source", this.source);
            }
            String str3 = this.version;
            if (str3 != null && str3.length() != 0) {
                jSONObject.put("version", this.version);
            }
            String str4 = this.versionId;
            if (str4 != null && str4.length() != 0) {
                jSONObject.put(AMP_PLAN_VERSION_ID, this.versionId);
            }
        } catch (JSONException unused) {
            ConsoleLogger.INSTANCE.getLogger().error("JSON Serialization of tacking plan object failed");
        }
        return jSONObject;
    }

    public final Plan clone() {
        return new Plan(this.branch, this.source, this.version, this.versionId);
    }

    /* JADX INFO: compiled from: Plan.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m2722d2 = {"Lcom/amplitude/core/events/Plan$Companion;", "", "()V", "AMP_PLAN_BRANCH", "", "AMP_PLAN_SOURCE", "AMP_PLAN_VERSION", "AMP_PLAN_VERSION_ID", "fromJSONObject", "Lcom/amplitude/core/events/Plan;", "jsonObject", "Lorg/json/JSONObject;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Plan fromJSONObject(JSONObject jsonObject) {
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            return new Plan(jsonObject.optString(Plan.AMP_PLAN_BRANCH, null), jsonObject.optString("source", null), jsonObject.optString("version", null), jsonObject.optString(Plan.AMP_PLAN_VERSION_ID, null));
        }
    }
}
