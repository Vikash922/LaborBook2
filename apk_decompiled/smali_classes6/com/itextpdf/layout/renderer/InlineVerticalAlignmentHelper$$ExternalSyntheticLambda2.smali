.class public final synthetic Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast p2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->lambda$adjustChildrenYLineHtmlMode$2(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)I

    move-result p1

    return p1
.end method
