.class public final synthetic Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;

.field public final synthetic f$1:Lcom/itextpdf/kernel/pdf/PdfObject;

.field public final synthetic f$2:Lcom/itextpdf/kernel/pdf/PdfObject;


# direct methods
.method public synthetic constructor <init>(Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;->f$0:Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;->f$1:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;->f$2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;->f$0:Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;->f$1:Lcom/itextpdf/kernel/pdf/PdfObject;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;->f$2:Lcom/itextpdf/kernel/pdf/PdfObject;

    check-cast p1, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    invoke-virtual {v0, v1, v2, p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->lambda$processLinkAnnotion$2$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    return-void
.end method
