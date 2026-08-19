package okhttp3.internal.cache;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.IOException;
import kotlin.Metadata;
import okio.Sink;

/* JADX INFO: compiled from: CacheRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m2722d2 = {"Lokhttp3/internal/cache/CacheRequest;", "", "abort", "", SDKConstants.PARAM_A2U_BODY, "Lokio/Sink;", "okhttp"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public interface CacheRequest {
    void abort();

    Sink body() throws IOException;
}
