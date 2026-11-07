.class public Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;
.super Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIFlickEvent"
.end annotation


# instance fields
.field X:I

.field Y:I

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

.field velocityX:D

.field velocityY:D


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;IIFF)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    .line 355
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->X:I

    .line 356
    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->Y:I

    float-to-double p1, p4

    .line 357
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->velocityX:D

    float-to-double p1, p5

    .line 358
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->velocityY:D

    return-void
.end method


# virtual methods
.method public Serialize(Ljava/nio/ByteBuffer;)Z
    .locals 2

    const/4 v0, 0x4

    .line 382
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 383
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->X:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 384
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->Y:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 385
    iget-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->velocityX:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 386
    iget-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;->velocityY:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const v0, -0x21524111

    .line 387
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
