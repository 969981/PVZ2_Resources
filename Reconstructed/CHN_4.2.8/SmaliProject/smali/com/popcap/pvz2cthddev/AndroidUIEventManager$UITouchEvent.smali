.class Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;
.super Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UITouchEvent"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field X:I

.field Y:I

.field ident:I

.field phase:I

.field previousX:I

.field previousY:I

.field tapCount:I

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

.field timestamp:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-class v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    return-void
.end method

.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;)V
    .locals 2

    .line 120
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    .line 123
    iget p1, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mPointerId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->ident:I

    .line 125
    iget p1, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    float-to-int p1, p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->X:I

    .line 126
    iget p1, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    float-to-int p1, p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->Y:I

    .line 127
    iget p1, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousX:F

    float-to-int p1, p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->previousX:I

    .line 128
    iget p1, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousY:F

    float-to-int p1, p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->previousY:I

    .line 129
    iget-wide v0, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mTimestampMS:D

    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->timestamp:D

    .line 130
    iget p1, p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->phase:I

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->phase:I

    return-void
.end method


# virtual methods
.method public Serialize(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->ident:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->X:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->Y:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->previousX:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->previousY:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 165
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 166
    iget-wide v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->timestamp:D

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 167
    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;->phase:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v2, -0x21524111

    .line 171
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method
