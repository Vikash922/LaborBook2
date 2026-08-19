.class public final Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;
.super Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;
.source "ITextCoreProductEvent.java"


# static fields
.field public static final PROCESS_PDF:Ljava/lang/String; = "process-pdf"


# instance fields
.field private final eventType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;Ljava/lang/String;Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;-><init>(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/data/ProductData;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;)V

    .line 54
    iput-object p3, p0, Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method public static createProcessPdfEvent(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;)Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;
    .locals 2

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;

    const-string v1, "process-pdf"

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;-><init>(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;Ljava/lang/String;Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;)V

    return-object v0
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method
