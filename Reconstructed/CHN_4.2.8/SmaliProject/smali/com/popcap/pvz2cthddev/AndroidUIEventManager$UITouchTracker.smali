.class Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;
.super Ljava/lang/Object;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UITouchTracker"
.end annotation


# instance fields
.field X:F

.field Y:F

.field mPointerId:I

.field mTapCount:I

.field mTimestampMS:D

.field phase:I

.field previousX:F

.field previousY:F

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method InitializeFromMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 0

    .line 61
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mPointerId:I

    .line 62
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousX:F

    .line 63
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousY:F

    const/4 p1, 0x1

    .line 64
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mTapCount:I

    .line 66
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mTimestampMS:D

    .line 68
    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->phase:I

    return-void
.end method

.method MarkAsCancelled()V
    .locals 2

    .line 92
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousX:F

    .line 93
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousY:F

    .line 95
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mTimestampMS:D

    const/4 v0, 0x4

    .line 97
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->phase:I

    return-void
.end method

.method UpdateFromMotionEvent(Landroid/view/MotionEvent;II)V
    .locals 2

    .line 73
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousX:F

    .line 74
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousY:F

    .line 76
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    .line 78
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->mTimestampMS:D

    .line 80
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->phase:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 83
    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousX:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->previousY:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 86
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->phase:I

    :cond_0
    return-void
.end method
