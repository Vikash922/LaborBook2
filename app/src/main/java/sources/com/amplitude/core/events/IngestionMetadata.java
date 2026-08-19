package com.amplitude.core.events;

import com.amplitude.common.jvm.ConsoleLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: IngestionMetadata.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u001f\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\t\u001a\u00020\u0000J\r\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u000e"}, m2722d2 = {"Lcom/amplitude/core/events/IngestionMetadata;", "", "sourceName", "", "sourceVersion", "(Ljava/lang/String;Ljava/lang/String;)V", "getSourceName", "()Ljava/lang/String;", "getSourceVersion", "clone", "toJSONObject", "Lorg/json/JSONObject;", "toJSONObject$core", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class IngestionMetadata {
    public static final String AMP_INGESTION_METADATA_SOURCE_NAME = "source_name";
    public static final String AMP_INGESTION_METADATA_SOURCE_VERSION = "source_version";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String sourceName;
    private final String sourceVersion;

    /* JADX WARN: Multi-variable type inference failed */
    public IngestionMetadata() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IngestionMetadata(String str) {
        this(str, null, 2, 0 == true ? 1 : 0);
    }

    public IngestionMetadata(String str, String str2) {
        this.sourceName = str;
        this.sourceVersion = str2;
    }

    public /* synthetic */ IngestionMetadata(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String getSourceName() {
        return this.sourceName;
    }

    public final String getSourceVersion() {
        return this.sourceVersion;
    }

    public final JSONObject toJSONObject$core() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.sourceName;
            if (str != null && str.length() != 0) {
                jSONObject.put(AMP_INGESTION_METADATA_SOURCE_NAME, this.sourceName);
            }
            String str2 = this.sourceVersion;
            if (str2 != null && str2.length() != 0) {
                jSONObject.put(AMP_INGESTION_METADATA_SOURCE_VERSION, this.sourceVersion);
            }
        } catch (JSONException unused) {
            ConsoleLogger.INSTANCE.getLogger().error("JSON Serialization of ingestion metadata object failed");
        }
        return jSONObject;
    }

    public final IngestionMetadata clone() {
        return new IngestionMetadata(this.sourceName, this.sourceVersion);
    }

    /* JADX INFO: compiled from: IngestionMetadata.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m2722d2 = {"Lcom/amplitude/core/events/IngestionMetadata$Companion;", "", "()V", "AMP_INGESTION_METADATA_SOURCE_NAME", "", "AMP_INGESTION_METADATA_SOURCE_VERSION", "fromJSONObject", "Lcom/amplitude/core/events/IngestionMetadata;", "jsonObject", "Lorg/json/JSONObject;", "fromJSONObject$core", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final IngestionMetadata fromJSONObject$core(JSONObject jsonObject) {
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            return new IngestionMetadata(jsonObject.optString(IngestionMetadata.AMP_INGESTION_METADATA_SOURCE_NAME, null), jsonObject.optString(IngestionMetadata.AMP_INGESTION_METADATA_SOURCE_VERSION, null));
        }
    }
}
