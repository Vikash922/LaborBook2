.class public final Lcom/itextpdf/commons/actions/sequence/SequenceIdManager;
.super Ljava/lang/Object;
.source "SequenceIdManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSequenceId(Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;)Lcom/itextpdf/commons/actions/sequence/SequenceId;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;->getSequenceId()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object p0

    return-object p0
.end method

.method public static setSequenceId(Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;Lcom/itextpdf/commons/actions/sequence/SequenceId;)V
    .locals 5

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;->getSequenceId()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;->setSequenceId(Lcom/itextpdf/commons/actions/sequence/SequenceId;)V

    .line 54
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Element already has sequence id: {0}, new id {1} will be ignored"

    .line 52
    invoke-virtual {p0}, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;->getSequenceId()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/commons/actions/sequence/SequenceId;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/commons/actions/sequence/SequenceId;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
