.class public Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;
.super Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIPinchEvent"
.end annotation


# instance fields
.field X:I

.field Y:I

.field scaleDelta:F

.field scaleDistSq:F

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;IIFF)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    .line 300
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->X:I

    .line 301
    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->Y:I

    .line 302
    iput p4, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->scaleDistSq:F

    .line 303
    iput p5, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->scaleDelta:F

    return-void
.end method


# virtual methods
.method public Serialize(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x3

    .line 327
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 328
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->X:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 329
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->Y:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 330
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->scaleDistSq:F

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 331
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;->scaleDelta:F

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const v0, -0x21524111

    .line 333
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 334
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
