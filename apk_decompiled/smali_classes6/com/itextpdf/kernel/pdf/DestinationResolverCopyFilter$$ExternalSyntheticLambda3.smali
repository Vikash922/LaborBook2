.class public final synthetic Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->lambda$processLinkAnnotion$1(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    return-void
.end method
