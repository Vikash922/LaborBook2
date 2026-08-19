.class public final synthetic Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Lcom/amplitude/core/utilities/EventsFileManager;


# direct methods
.method public synthetic constructor <init>(Lcom/amplitude/core/utilities/EventsFileManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda0;->f$0:Lcom/amplitude/core/utilities/EventsFileManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda0;->f$0:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-static {v0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->$r8$lambda$TH36nqWNulSYajg8LQOZIzcIxLg(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
