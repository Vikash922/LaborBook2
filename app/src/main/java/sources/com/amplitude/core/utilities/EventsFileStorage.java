package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.core.events.BaseEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import org.json.JSONArray;

/* JADX INFO: compiled from: FileStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001JN\u0010\u0002\u001a@\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0003j\u0004\u0018\u0001`\f2\u0006\u0010\r\u001a\u00020\tH&J\u0019\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0001H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H&J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\tH&J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tH&J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\tH&J\u0011\u0010\u0018\u001a\u00020\u000bH¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH&ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u001dÀ\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/core/utilities/EventsFileStorage;", "", "getEventCallback", "Lkotlin/Function3;", "Lcom/amplitude/core/events/BaseEvent;", "", "Lkotlin/ParameterName;", "name", "status", "", "message", "", "Lcom/amplitude/core/EventCallBack;", "insertId", "getEventsString", "content", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readEventsContent", "", "releaseFile", "filePath", "removeEventCallback", "removeFile", "", "rollover", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "splitEventFile", DatabaseConstants.EVENT_TABLE_NAME, "Lorg/json/JSONArray;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface EventsFileStorage {
    Function3<BaseEvent, Integer, String, Unit> getEventCallback(String insertId);

    Object getEventsString(Object obj, Continuation<? super String> continuation);

    List<Object> readEventsContent();

    void releaseFile(String filePath);

    void removeEventCallback(String insertId);

    boolean removeFile(String filePath);

    Object rollover(Continuation<? super Unit> continuation);

    void splitEventFile(String filePath, JSONArray events);
}
