package com.amplitude.core;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IngestionMetadata;
import com.amplitude.core.events.Plan;
import com.amplitude.core.utilities.ConsoleLoggerProvider;
import com.amplitude.core.utilities.InMemoryStorageProvider;
import com.amplitude.p009id.IMIdentityStorageProvider;
import com.amplitude.p009id.IdentityStorageProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Configuration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bO\b\u0016\u0018\u0000 t2\u00020\u0001:\u0001tB¯\u0002\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012F\b\u0002\u0010\u0010\u001a@\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0011j\u0004\u0018\u0001`\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001a\u001a\u00020\t\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\b\b\u0002\u0010\"\u001a\u00020#\u0012\b\b\u0002\u0010$\u001a\u00020\u000b\u0012\b\b\u0002\u0010%\u001a\u00020&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010*J\u0006\u0010r\u001a\u00020\tJ\u0006\u0010s\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,RX\u0010\u0010\u001a@\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0011j\u0004\u0018\u0001`\u0018X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u0010(\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010,\"\u0004\b2\u00103R\u001a\u0010\u0006\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u0010\u0019\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00105\"\u0004\b9\u00107R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u00105\"\u0004\b;\u00107R\u001a\u0010\"\u001a\u00020#X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010$\u001a\u00020\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001a\u0010%\u001a\u00020&X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010\u0007\u001a\u00020\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010,\"\u0004\bM\u00103R\u0014\u0010\f\u001a\u00020\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010OR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u0010\n\u0002\u0010T\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u001e\u0010'\u001a\u0004\u0018\u00010\tX\u0096\u000e¢\u0006\u0010\n\u0002\u0010Y\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u001a\u0010\b\u001a\u00020\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010,\"\u0004\b_\u00103R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010,\"\u0004\be\u00103R\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u001e\u0010)\u001a\u0004\u0018\u00010#X\u0096\u000e¢\u0006\u0010\n\u0002\u0010n\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010AR\u001a\u0010\u001a\u001a\u00020\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010[\"\u0004\bq\u0010]¨\u0006u"}, m2722d2 = {"Lcom/amplitude/core/Configuration;", "", "apiKey", "", "flushQueueSize", "", "flushIntervalMillis", "instanceName", "optOut", "", "storageProvider", "Lcom/amplitude/core/StorageProvider;", "loggerProvider", "Lcom/amplitude/core/LoggerProvider;", "minIdLength", "partnerId", "callback", "Lkotlin/Function3;", "Lcom/amplitude/core/events/BaseEvent;", "Lkotlin/ParameterName;", "name", "status", "message", "", "Lcom/amplitude/core/EventCallBack;", "flushMaxRetries", "useBatch", "serverZone", "Lcom/amplitude/core/ServerZone;", "serverUrl", "plan", "Lcom/amplitude/core/events/Plan;", "ingestionMetadata", "Lcom/amplitude/core/events/IngestionMetadata;", "identifyBatchIntervalMillis", "", "identifyInterceptStorageProvider", "identityStorageProvider", "Lcom/amplitude/id/IdentityStorageProvider;", "offline", "deviceId", "sessionId", "(Ljava/lang/String;IILjava/lang/String;ZLcom/amplitude/core/StorageProvider;Lcom/amplitude/core/LoggerProvider;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function3;IZLcom/amplitude/core/ServerZone;Ljava/lang/String;Lcom/amplitude/core/events/Plan;Lcom/amplitude/core/events/IngestionMetadata;JLcom/amplitude/core/StorageProvider;Lcom/amplitude/id/IdentityStorageProvider;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V", "getApiKey", "()Ljava/lang/String;", "getCallback", "()Lkotlin/jvm/functions/Function3;", "setCallback", "(Lkotlin/jvm/functions/Function3;)V", "getDeviceId", "setDeviceId", "(Ljava/lang/String;)V", "getFlushIntervalMillis", "()I", "setFlushIntervalMillis", "(I)V", "getFlushMaxRetries", "setFlushMaxRetries", "getFlushQueueSize", "setFlushQueueSize", "getIdentifyBatchIntervalMillis", "()J", "setIdentifyBatchIntervalMillis", "(J)V", "getIdentifyInterceptStorageProvider", "()Lcom/amplitude/core/StorageProvider;", "setIdentifyInterceptStorageProvider", "(Lcom/amplitude/core/StorageProvider;)V", "getIdentityStorageProvider", "()Lcom/amplitude/id/IdentityStorageProvider;", "setIdentityStorageProvider", "(Lcom/amplitude/id/IdentityStorageProvider;)V", "getIngestionMetadata", "()Lcom/amplitude/core/events/IngestionMetadata;", "setIngestionMetadata", "(Lcom/amplitude/core/events/IngestionMetadata;)V", "getInstanceName", "setInstanceName", "getLoggerProvider", "()Lcom/amplitude/core/LoggerProvider;", "getMinIdLength", "()Ljava/lang/Integer;", "setMinIdLength", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getOffline", "()Ljava/lang/Boolean;", "setOffline", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getOptOut", "()Z", "setOptOut", "(Z)V", "getPartnerId", "setPartnerId", "getPlan", "()Lcom/amplitude/core/events/Plan;", "setPlan", "(Lcom/amplitude/core/events/Plan;)V", "getServerUrl", "setServerUrl", "getServerZone", "()Lcom/amplitude/core/ServerZone;", "setServerZone", "(Lcom/amplitude/core/ServerZone;)V", "getSessionId", "()Ljava/lang/Long;", "setSessionId", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getStorageProvider", "getUseBatch", "setUseBatch", "isMinIdLengthValid", "isValid", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Configuration {
    public static final String DEFAULT_INSTANCE = "$default_instance";
    public static final int FLUSH_INTERVAL_MILLIS = 30000;
    public static final int FLUSH_MAX_RETRIES = 5;
    public static final int FLUSH_QUEUE_SIZE = 30;
    public static final long IDENTIFY_BATCH_INTERVAL_MILLIS = 30000;
    private final String apiKey;
    private Function3<? super BaseEvent, ? super Integer, ? super String, Unit> callback;
    private String deviceId;
    private int flushIntervalMillis;
    private int flushMaxRetries;
    private int flushQueueSize;
    private long identifyBatchIntervalMillis;
    private StorageProvider identifyInterceptStorageProvider;
    private IdentityStorageProvider identityStorageProvider;
    private IngestionMetadata ingestionMetadata;
    private String instanceName;
    private final LoggerProvider loggerProvider;
    private Integer minIdLength;
    private Boolean offline;
    private boolean optOut;
    private String partnerId;
    private Plan plan;
    private String serverUrl;
    private ServerZone serverZone;
    private Long sessionId;
    private final StorageProvider storageProvider;
    private boolean useBatch;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey) {
        this(apiKey, 0, 0, null, false, null, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194302, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i) {
        this(apiKey, i, 0, null, false, null, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194300, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2) {
        this(apiKey, i, i2, null, false, null, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194296, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName) {
        this(apiKey, i, i2, instanceName, false, null, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194288, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z) {
        this(apiKey, i, i2, instanceName, z, null, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194272, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider) {
        this(apiKey, i, i2, instanceName, z, storageProvider, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194240, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194176, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194048, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4193792, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4193280, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, false, null, null, null, null, 0L, null, null, null, null, null, 4192256, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, null, null, null, null, 0L, null, null, null, null, null, 4190208, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, null, null, null, 0L, null, null, null, null, null, 4186112, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, null, null, 0L, null, null, null, null, null, 4177920, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, null, 0L, null, null, null, null, null, 4161536, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, 0L, null, null, null, null, null, 4128768, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, long j) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, j, null, null, null, null, null, 4063232, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, long j, StorageProvider identifyInterceptStorageProvider) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, j, identifyInterceptStorageProvider, null, null, null, null, 3932160, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, long j, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, j, identifyInterceptStorageProvider, identityStorageProvider, null, null, null, 3670016, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, long j, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, Boolean bool) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, j, identifyInterceptStorageProvider, identityStorageProvider, bool, null, null, 3145728, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, long j, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, Boolean bool, String str3) {
        this(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, j, identifyInterceptStorageProvider, identityStorageProvider, bool, str3, null, 2097152, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    public Configuration(String apiKey, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, long j, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, Boolean bool, String str3, Long l) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
        this.apiKey = apiKey;
        this.flushQueueSize = i;
        this.flushIntervalMillis = i2;
        this.instanceName = instanceName;
        this.optOut = z;
        this.storageProvider = storageProvider;
        this.loggerProvider = loggerProvider;
        this.minIdLength = num;
        this.partnerId = str;
        this.callback = function3;
        this.flushMaxRetries = i3;
        this.useBatch = z2;
        this.serverZone = serverZone;
        this.serverUrl = str2;
        this.plan = plan;
        this.ingestionMetadata = ingestionMetadata;
        this.identifyBatchIntervalMillis = j;
        this.identifyInterceptStorageProvider = identifyInterceptStorageProvider;
        this.identityStorageProvider = identityStorageProvider;
        this.offline = bool;
        this.deviceId = str3;
        this.sessionId = l;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public int getFlushQueueSize() {
        return this.flushQueueSize;
    }

    public void setFlushQueueSize(int i) {
        this.flushQueueSize = i;
    }

    public int getFlushIntervalMillis() {
        return this.flushIntervalMillis;
    }

    public void setFlushIntervalMillis(int i) {
        this.flushIntervalMillis = i;
    }

    public /* synthetic */ Configuration(String str, int i, int i2, String str2, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str3, Function3 function3, int i3, boolean z2, ServerZone serverZone, String str4, Plan plan, IngestionMetadata ingestionMetadata, long j, StorageProvider storageProvider2, IdentityStorageProvider identityStorageProvider, Boolean bool, String str5, Long l, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? 30 : i, (i4 & 4) != 0 ? FLUSH_INTERVAL_MILLIS : i2, (i4 & 8) != 0 ? DEFAULT_INSTANCE : str2, (i4 & 16) != 0 ? false : z, (i4 & 32) != 0 ? new InMemoryStorageProvider() : storageProvider, (i4 & 64) != 0 ? new ConsoleLoggerProvider() : loggerProvider, (i4 & 128) != 0 ? null : num, (i4 & 256) != 0 ? null : str3, (i4 & 512) != 0 ? null : function3, (i4 & 1024) != 0 ? 5 : i3, (i4 & 2048) != 0 ? false : z2, (i4 & 4096) != 0 ? ServerZone.US : serverZone, (i4 & 8192) != 0 ? null : str4, (i4 & 16384) != 0 ? null : plan, (i4 & 32768) != 0 ? null : ingestionMetadata, (i4 & 65536) != 0 ? 30000L : j, (i4 & 131072) != 0 ? new InMemoryStorageProvider() : storageProvider2, (i4 & 262144) != 0 ? new IMIdentityStorageProvider() : identityStorageProvider, (i4 & 524288) != 0 ? false : bool, (i4 & 1048576) != 0 ? null : str5, (i4 & 2097152) != 0 ? null : l);
    }

    public String getInstanceName() {
        return this.instanceName;
    }

    public void setInstanceName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.instanceName = str;
    }

    public boolean getOptOut() {
        return this.optOut;
    }

    public void setOptOut(boolean z) {
        this.optOut = z;
    }

    public StorageProvider getStorageProvider() {
        return this.storageProvider;
    }

    public LoggerProvider getLoggerProvider() {
        return this.loggerProvider;
    }

    public Integer getMinIdLength() {
        return this.minIdLength;
    }

    public void setMinIdLength(Integer num) {
        this.minIdLength = num;
    }

    public String getPartnerId() {
        return this.partnerId;
    }

    public void setPartnerId(String str) {
        this.partnerId = str;
    }

    public Function3<BaseEvent, Integer, String, Unit> getCallback() {
        return this.callback;
    }

    public void setCallback(Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3) {
        this.callback = function3;
    }

    public int getFlushMaxRetries() {
        return this.flushMaxRetries;
    }

    public void setFlushMaxRetries(int i) {
        this.flushMaxRetries = i;
    }

    public boolean getUseBatch() {
        return this.useBatch;
    }

    public void setUseBatch(boolean z) {
        this.useBatch = z;
    }

    public ServerZone getServerZone() {
        return this.serverZone;
    }

    public void setServerZone(ServerZone serverZone) {
        Intrinsics.checkNotNullParameter(serverZone, "<set-?>");
        this.serverZone = serverZone;
    }

    public String getServerUrl() {
        return this.serverUrl;
    }

    public void setServerUrl(String str) {
        this.serverUrl = str;
    }

    public Plan getPlan() {
        return this.plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public IngestionMetadata getIngestionMetadata() {
        return this.ingestionMetadata;
    }

    public void setIngestionMetadata(IngestionMetadata ingestionMetadata) {
        this.ingestionMetadata = ingestionMetadata;
    }

    public long getIdentifyBatchIntervalMillis() {
        return this.identifyBatchIntervalMillis;
    }

    public void setIdentifyBatchIntervalMillis(long j) {
        this.identifyBatchIntervalMillis = j;
    }

    public StorageProvider getIdentifyInterceptStorageProvider() {
        return this.identifyInterceptStorageProvider;
    }

    public void setIdentifyInterceptStorageProvider(StorageProvider storageProvider) {
        Intrinsics.checkNotNullParameter(storageProvider, "<set-?>");
        this.identifyInterceptStorageProvider = storageProvider;
    }

    public IdentityStorageProvider getIdentityStorageProvider() {
        return this.identityStorageProvider;
    }

    public void setIdentityStorageProvider(IdentityStorageProvider identityStorageProvider) {
        Intrinsics.checkNotNullParameter(identityStorageProvider, "<set-?>");
        this.identityStorageProvider = identityStorageProvider;
    }

    public Boolean getOffline() {
        return this.offline;
    }

    public void setOffline(Boolean bool) {
        this.offline = bool;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public Long getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(Long l) {
        this.sessionId = l;
    }

    public final boolean isValid() {
        return !StringsKt.isBlank(this.apiKey) && getFlushQueueSize() > 0 && getFlushIntervalMillis() > 0 && isMinIdLengthValid();
    }

    public final boolean isMinIdLengthValid() {
        Boolean boolValueOf;
        Integer minIdLength = getMinIdLength();
        if (minIdLength == null) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(minIdLength.intValue() > 0);
        }
        if (boolValueOf == null) {
            return true;
        }
        return boolValueOf.booleanValue();
    }
}
