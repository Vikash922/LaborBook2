.class public Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
.super Ljava/lang/Object;
.source "MarginsCollapseInfo.java"


# instance fields
.field private bufferSpaceOnBottom:F

.field private bufferSpaceOnTop:F

.field private clearanceApplied:Z

.field private collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

.field private collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

.field private ignoreOwnMarginBottom:Z

.field private ignoreOwnMarginTop:Z

.field private isSelfCollapsing:Z

.field private ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

.field private usedBufferSpaceOnBottom:F

.field private usedBufferSpaceOnTop:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 67
    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 68
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 69
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    .line 72
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    .line 73
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    .line 74
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    .line 75
    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    return-void
.end method

.method constructor <init>(ZZLcom/itextpdf/layout/margincollapse/MarginsCollapse;Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 80
    iput-boolean p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 81
    iput-object p3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 82
    iput-object p4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    .line 85
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    .line 86
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    .line 87
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    return-void
.end method

.method public static createDeepCopy(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 2

    .line 108
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>()V

    .line 109
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 111
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 112
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 113
    iget-object p0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    :cond_0
    return-object v0
.end method

.method public static updateFromCopy(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 2

    .line 121
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 122
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 124
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iget-object v1, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 125
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iget-object v1, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 133
    :cond_1
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 134
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 135
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 136
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 137
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 139
    iget-boolean p1, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setClearanceApplied(Z)V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    iput-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    iput-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 94
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iput-object v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 95
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iput-object v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 97
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 98
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 99
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 100
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 101
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 102
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 104
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setClearanceApplied(Z)V

    return-void
.end method

.method getBufferSpaceOnBottom()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    return v0
.end method

.method getBufferSpaceOnTop()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    return v0
.end method

.method getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-object v0
.end method

.method getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-object v0
.end method

.method getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-object v0
.end method

.method getUsedBufferSpaceOnBottom()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    return v0
.end method

.method getUsedBufferSpaceOnTop()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    return v0
.end method

.method isClearanceApplied()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    return v0
.end method

.method isIgnoreOwnMarginBottom()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    return v0
.end method

.method isIgnoreOwnMarginTop()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    return v0
.end method

.method isSelfCollapsing()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    return v0
.end method

.method setBufferSpaceOnBottom(F)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    return-void
.end method

.method setBufferSpaceOnTop(F)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    return-void
.end method

.method setClearanceApplied(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    return-void
.end method

.method setCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-void
.end method

.method setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-void
.end method

.method setSelfCollapsing(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    return-void
.end method

.method setUsedBufferSpaceOnBottom(F)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    return-void
.end method

.method setUsedBufferSpaceOnTop(F)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    return-void
.end method
