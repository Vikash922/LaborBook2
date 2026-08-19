.class public Lcom/amplitude/core/events/Identify;
.super Ljava/lang/Object;
.source "Identify.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/events/Identify$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0000J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010!\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0001J!\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\"\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010\u0015J!\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013\u00a2\u0006\u0002\u0010\u0016J!\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0002\u0010\u0017J!\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013\u00a2\u0006\u0002\u0010\u0018J!\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013\u00a2\u0006\u0002\u0010\u0019J!\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010#\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ\"\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/amplitude/core/events/Identify;",
        "",
        "()V",
        "_properties",
        "",
        "",
        "properties",
        "getProperties",
        "()Ljava/util/Map;",
        "propertySet",
        "",
        "add",
        "property",
        "value",
        "",
        "",
        "",
        "",
        "append",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;",
        "(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;",
        "(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;",
        "(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;",
        "(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;",
        "(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;",
        "",
        "",
        "clearAll",
        "postInsert",
        "preInsert",
        "prepend",
        "remove",
        "set",
        "setOnce",
        "setUserProperty",
        "",
        "operation",
        "Lcom/amplitude/core/events/IdentifyOperation;",
        "unset",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/amplitude/core/events/Identify$Companion;

.field public static final UNSET_VALUE:Ljava/lang/String; = "-"


# instance fields
.field private final _properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final propertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/events/Identify$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/events/Identify$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/events/Identify;->Companion:Lcom/amplitude/core/events/Identify$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/amplitude/core/events/Identify;->propertySet:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    return-void
.end method

.method private final declared-synchronized setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Already used property "

    const-string v1, "Attempting to perform operation "

    const-string v2, "Attempting to perform operation "

    monitor-enter p0

    .line 561
    :try_start_0
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 562
    sget-object p2, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    invoke-virtual {p2}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;->getLogger()Lcom/amplitude/common/jvm/ConsoleLogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " with a null or empty string property, ignoring"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 566
    :try_start_1
    sget-object p3, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    invoke-virtual {p3}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;->getLogger()Lcom/amplitude/common/jvm/ConsoleLogger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " with null value for property "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    .line 570
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    sget-object v2, Lcom/amplitude/core/events/IdentifyOperation;->CLEAR_ALL:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-virtual {v2}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    sget-object p1, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    invoke-virtual {p1}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;->getLogger()Lcom/amplitude/common/jvm/ConsoleLogger;

    move-result-object p1

    const-string p2, "This Identify already contains a $clearAll operation, ignoring operation %s"

    invoke-virtual {p1, p2}, Lcom/amplitude/common/jvm/ConsoleLogger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    monitor-exit p0

    return-void

    .line 575
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/amplitude/core/events/Identify;->propertySet:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    sget-object p3, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    invoke-virtual {p3}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;->getLogger()Lcom/amplitude/common/jvm/ConsoleLogger;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in previous operation, ignoring operation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->warn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 579
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_4
    iget-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object p1, p0, Lcom/amplitude/core/events/Identify;->propertySet:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 582
    :cond_5
    :try_start_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method


# virtual methods
.method public final add(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->ADD:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final add(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->ADD:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final add(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->ADD:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final add(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->ADD:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final append(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->APPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final declared-synchronized clearAll()Lcom/amplitude/core/events/Identify;
    .locals 3

    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 556
    iget-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    sget-object v1, Lcom/amplitude/core/events/IdentifyOperation;->CLEAR_ALL:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-virtual {v1}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/core/events/Identify;->_properties:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 27
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 28
    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final postInsert(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final postInsert(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->POST_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final preInsert(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PRE_INSERT:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->PREPEND:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->REMOVE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final set(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;D)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;F)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;I)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;J)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;Ljava/util/List;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;Ljava/util/Map;)Lcom/amplitude/core/events/Identify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/core/events/Identify;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;Z)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOnce(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET_ONCE:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final unset(Ljava/lang/String;)Lcom/amplitude/core/events/Identify;
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->UNSET:Lcom/amplitude/core/events/IdentifyOperation;

    const-string v1, "-"

    invoke-direct {p0, v0, p1, v1}, Lcom/amplitude/core/events/Identify;->setUserProperty(Lcom/amplitude/core/events/IdentifyOperation;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
