.class public final Lcom/google/firebase/perf/logging/ConsoleUrlGenerator;
.super Ljava/lang/Object;
.source "ConsoleUrlGenerator.java"


# static fields
.field private static final URL_BASE_PATH:Ljava/lang/String; = "https://console.firebase.google.com"

.field private static final UTM_MEDIUM:Ljava/lang/String; = "android-ide"

.field private static final UTM_SOURCE:Ljava/lang/String; = "perf-android-sdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCustomTraceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p0, p1}, Lcom/google/firebase/perf/logging/ConsoleUrlGenerator;->getRootUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    const-string p1, "perf-android-sdk"

    const-string v0, "android-ide"

    filled-new-array {p0, p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s/troubleshooting/trace/DURATION_TRACE/%s?utm_source=%s&utm_medium=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateDashboardUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0, p1}, Lcom/google/firebase/perf/logging/ConsoleUrlGenerator;->getRootUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    const-string p1, "perf-android-sdk"

    const-string v0, "android-ide"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s/trends?utm_source=%s&utm_medium=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateScreenTraceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {p0, p1}, Lcom/google/firebase/perf/logging/ConsoleUrlGenerator;->getRootUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    const-string p1, "perf-android-sdk"

    const-string v0, "android-ide"

    filled-new-array {p0, p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s/troubleshooting/trace/SCREEN_TRACE/%s?utm_source=%s&utm_medium=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRootUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "https://console.firebase.google.com"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s/project/%s/performance/app/android:%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
