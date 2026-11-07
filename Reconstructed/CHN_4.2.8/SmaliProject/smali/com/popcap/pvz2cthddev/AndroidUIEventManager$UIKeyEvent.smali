.class public Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;
.super Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIKeyEvent"
.end annotation


# instance fields
.field mKeyCode:I

.field mKeyEvent:I

.field mRepeatCount:I

.field mTimestampMS:D

.field mUnicodeChar:I

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Landroid/view/KeyEvent;)V
    .locals 1

    .line 192
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    .line 193
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mKeyCode:I

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mUnicodeChar:I

    .line 195
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mKeyEvent:I

    .line 196
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mRepeatCount:I

    .line 198
    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mTimestampMS:D

    return-void
.end method


# virtual methods
.method public Serialize(Ljava/nio/ByteBuffer;)Z
    .locals 3

    const/4 v0, 0x1

    .line 224
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 226
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mUnicodeChar:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 227
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mKeyEvent:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    iget-wide v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mTimestampMS:D

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 229
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, -0x21524111

    .line 231
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
