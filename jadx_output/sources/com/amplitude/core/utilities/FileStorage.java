package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.common.Logger;
import com.amplitude.core.Configuration;
import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.EventPipeline;
import com.amplitude.p009id.utilities.PropertiesFile;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;

/* JADX INFO: compiled from: FileStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001EB'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJN\u0010\u001d\u001a@\u0012\u0004\u0012\u00020\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\rj\u0004\u0018\u0001`\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0019\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\"J\b\u0010#\u001a\u00020\u0004H\u0002J(\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u000200H\u0016J\u000e\u00101\u001a\b\u0012\u0004\u0012\u00020!02H\u0016J\u0010\u00103\u001a\u00020\u00142\u0006\u00104\u001a\u00020\u0004H\u0016J\u0019\u00105\u001a\u00020\u00142\u0006\u0010/\u001a\u000200H\u0096@ø\u0001\u0000¢\u0006\u0002\u00106J\u0010\u00107\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0010\u00108\u001a\u0002092\u0006\u00104\u001a\u00020\u0004H\u0016J\u0011\u0010:\u001a\u00020\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010;J\u0018\u0010<\u001a\u00020\u00142\u0006\u00104\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>H\u0016J!\u0010?\u001a\u00020\u00142\u0006\u0010/\u001a\u0002002\u0006\u0010@\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010AJ\u0019\u0010B\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010DR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000RT\u0010\u000b\u001aH\u0012\u0004\u0012\u00020\u0004\u0012>\u0012<\u0012\u0004\u0012\u00020\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u00150\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006F"}, m2722d2 = {"Lcom/amplitude/core/utilities/FileStorage;", "Lcom/amplitude/core/Storage;", "Lcom/amplitude/core/utilities/EventsFileStorage;", "storageKey", "", "logger", "Lcom/amplitude/common/Logger;", "prefix", "diagnostics", "Lcom/amplitude/core/utilities/Diagnostics;", "(Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V", "eventCallbacksMap", "", "Lkotlin/Function3;", "Lcom/amplitude/core/events/BaseEvent;", "", "Lkotlin/ParameterName;", "name", "status", "message", "", "Lcom/amplitude/core/EventCallBack;", "eventsFile", "Lcom/amplitude/core/utilities/EventsFileManager;", "propertiesFile", "Lcom/amplitude/id/utilities/PropertiesFile;", "storageDirectory", "Ljava/io/File;", "storageDirectoryEvents", "getEventCallback", "insertId", "getEventsString", "content", "", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPrefix", "getResponseHandler", "Lcom/amplitude/core/utilities/ResponseHandler;", "eventPipeline", "Lcom/amplitude/core/platform/EventPipeline;", "configuration", "Lcom/amplitude/core/Configuration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "read", "key", "Lcom/amplitude/core/Storage$Constants;", "readEventsContent", "", "releaseFile", "filePath", "remove", "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeEventCallback", "removeFile", "", "rollover", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "splitEventFile", DatabaseConstants.EVENT_TABLE_NAME, "Lorg/json/JSONArray;", "write", "value", "(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeEvent", "event", "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class FileStorage implements Storage, EventsFileStorage {
    public static final String STORAGE_PREFIX = "amplitude-kotlin";
    private final Diagnostics diagnostics;
    private final Map<String, Function3<BaseEvent, Integer, String, Unit>> eventCallbacksMap;
    private final EventsFileManager eventsFile;
    private final Logger logger;
    private final String prefix;
    private final PropertiesFile propertiesFile;
    private final File storageDirectory;
    private final File storageDirectoryEvents;

    /* JADX INFO: renamed from: com.amplitude.core.utilities.FileStorage$writeEvent$1 */
    /* JADX INFO: compiled from: FileStorage.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.FileStorage", m2735f = "FileStorage.kt", m2736i = {0, 0}, m2737l = {39}, m2738m = "writeEvent", m2739n = {"this", "event"}, m2740s = {"L$0", "L$1"})
    static final class C10801 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10801(Continuation<? super C10801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileStorage.this.writeEvent(null, this);
        }
    }

    public FileStorage(String storageKey, Logger logger, String str, Diagnostics diagnostics) throws IOException {
        Intrinsics.checkNotNullParameter(storageKey, "storageKey");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
        this.logger = logger;
        this.prefix = str;
        this.diagnostics = diagnostics;
        File file = new File("/tmp/" + getPrefix() + '/' + storageKey);
        this.storageDirectory = file;
        File file2 = new File(file, DatabaseConstants.EVENT_TABLE_NAME);
        this.storageDirectoryEvents = file2;
        PropertiesFile propertiesFile = new PropertiesFile(file, storageKey, getPrefix(), null);
        this.propertiesFile = propertiesFile;
        this.eventsFile = new EventsFileManager(file2, storageKey, propertiesFile, logger, diagnostics);
        this.eventCallbacksMap = new LinkedHashMap();
        propertiesFile.load();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.amplitude.core.Storage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object writeEvent(com.amplitude.core.events.BaseEvent r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.amplitude.core.utilities.FileStorage.C10801
            if (r0 == 0) goto L14
            r0 = r6
            com.amplitude.core.utilities.FileStorage$writeEvent$1 r0 = (com.amplitude.core.utilities.FileStorage.C10801) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.amplitude.core.utilities.FileStorage$writeEvent$1 r0 = new com.amplitude.core.utilities.FileStorage$writeEvent$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r5 = r0.L$1
            com.amplitude.core.events.BaseEvent r5 = (com.amplitude.core.events.BaseEvent) r5
            java.lang.Object r0 = r0.L$0
            com.amplitude.core.utilities.FileStorage r0 = (com.amplitude.core.utilities.FileStorage) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L53
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            com.amplitude.core.utilities.EventsFileManager r6 = r4.eventsFile
            com.amplitude.core.utilities.JSONUtil r2 = com.amplitude.core.utilities.JSONUtil.INSTANCE
            java.lang.String r2 = r2.eventToString(r5)
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.storeEvent(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            r0 = r4
        L53:
            kotlin.jvm.functions.Function3 r6 = r5.getCallback()
            if (r6 != 0) goto L5a
            goto L69
        L5a:
            java.lang.String r5 = r5.getInsertId()
            if (r5 != 0) goto L61
            goto L69
        L61:
            java.util.Map<java.lang.String, kotlin.jvm.functions.Function3<com.amplitude.core.events.BaseEvent, java.lang.Integer, java.lang.String, kotlin.Unit>> r0 = r0.eventCallbacksMap
            java.lang.Object r5 = r0.put(r5, r6)
            kotlin.jvm.functions.Function3 r5 = (kotlin.jvm.functions.Function3) r5
        L69:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.FileStorage.writeEvent(com.amplitude.core.events.BaseEvent, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.amplitude.core.Storage
    public Object write(Storage.Constants constants, String str, Continuation<? super Unit> continuation) {
        this.propertiesFile.putString(constants.getRawVal(), str);
        return Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public Object remove(Storage.Constants constants, Continuation<? super Unit> continuation) {
        this.propertiesFile.remove(constants.getRawVal());
        return Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public Object rollover(Continuation<? super Unit> continuation) {
        Object objRollover = this.eventsFile.rollover(continuation);
        return objRollover == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRollover : Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public String read(Storage.Constants key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.propertiesFile.getString(key.getRawVal(), null);
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public List<Object> readEventsContent() {
        return this.eventsFile.read();
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public void releaseFile(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.eventsFile.release(filePath);
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public Object getEventsString(Object obj, Continuation<? super String> continuation) {
        return this.eventsFile.getEventString((String) obj, continuation);
    }

    @Override // com.amplitude.core.Storage
    public ResponseHandler getResponseHandler(EventPipeline eventPipeline, Configuration configuration, CoroutineScope scope, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(eventPipeline, "eventPipeline");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return new FileResponseHandler(this, eventPipeline, configuration, scope, dispatcher, this.logger);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public boolean removeFile(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return this.eventsFile.remove(filePath);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public Function3<BaseEvent, Integer, String, Unit> getEventCallback(String insertId) {
        Intrinsics.checkNotNullParameter(insertId, "insertId");
        Map<String, Function3<BaseEvent, Integer, String, Unit>> map = this.eventCallbacksMap;
        if (map != null) {
            return map.getOrDefault(insertId, null);
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public void removeEventCallback(String insertId) {
        Intrinsics.checkNotNullParameter(insertId, "insertId");
        this.eventCallbacksMap.remove(insertId);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public void splitEventFile(String filePath, JSONArray events) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(events, "events");
        this.eventsFile.splitFile(filePath, events);
    }

    private final String getPrefix() {
        String str = this.prefix;
        return str == null ? "amplitude-kotlin" : str;
    }
}
