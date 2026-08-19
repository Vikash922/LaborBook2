.class Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/RotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertiesBackup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;
    }
.end annotation


# instance fields
.field private propertiesBackup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;",
            ">;"
        }
    .end annotation
.end field

.field private renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->propertiesBackup:Ljava/util/HashMap;

    .line 180
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    return-void
.end method


# virtual methods
.method public restoreProperty(I)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->propertiesBackup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;->isOwnedByRender()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public storeBoolProperty(I)Ljava/lang/Boolean;
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->propertiesBackup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v4, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public storeFloatProperty(I)Ljava/lang/Float;
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->propertiesBackup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v4, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public storeProperty(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->propertiesBackup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v4, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup$PropertyBackup;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
