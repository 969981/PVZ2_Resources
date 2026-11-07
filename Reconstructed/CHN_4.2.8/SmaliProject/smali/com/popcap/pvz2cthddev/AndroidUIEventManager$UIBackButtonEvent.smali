.class public Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIBackButtonEvent;
.super Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIBackButtonEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIBackButtonEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    return-void
.end method


# virtual methods
.method public Serialize(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x5

    .line 421
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v0, -0x21524111

    .line 423
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 425
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
