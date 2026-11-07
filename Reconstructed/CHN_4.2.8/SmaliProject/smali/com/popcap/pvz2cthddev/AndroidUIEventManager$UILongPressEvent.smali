.class public Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;
.super Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UILongPressEvent"
.end annotation


# instance fields
.field X:I

.field Y:I

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Landroid/view/MotionEvent;)V
    .locals 1

    .line 248
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 250
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 252
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;->X:I

    .line 253
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;->Y:I

    return-void
.end method


# virtual methods
.method public Serialize(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x2

    .line 276
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 277
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;->X:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;->Y:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v0, -0x21524111

    .line 280
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
