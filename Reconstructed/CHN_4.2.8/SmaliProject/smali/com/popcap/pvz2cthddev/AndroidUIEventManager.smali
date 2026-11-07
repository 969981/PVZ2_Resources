.class public Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.super Ljava/lang/Object;
.source "AndroidUIEventManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;,
        Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIBackButtonEvent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EVENT_BACK_BUTTON:I = 0x5

.field private static final EVENT_FLICK:I = 0x4

.field private static final EVENT_KEY:I = 0x1

.field private static final EVENT_LONGPRESS:I = 0x2

.field private static final EVENT_PINCH:I = 0x3

.field private static final EVENT_TOUCH:I = 0x0

.field private static final SCALE_THRESHOLD:F = 5.0E-4f

.field private static final TouchPhase_TOUCH_BEGAN:I = 0x0

.field private static final TouchPhase_TOUCH_CANCELLED:I = 0x4

.field private static final TouchPhase_TOUCH_ENDED:I = 0x3

.field private static final TouchPhase_TOUCH_MOVED:I = 0x1

.field private static final TouchPhase_TOUCH_STATIONARY:I = 0x2


# instance fields
.field private endScale:F

.field mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;",
            ">;"
        }
    .end annotation
.end field

.field mTouches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;",
            ">;"
        }
    .end annotation
.end field

.field mbAppHasFocus:Z

.field private prevScaleMag:F

.field private startScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->prevScaleMag:F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    .line 440
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    .line 441
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mEvents:Ljava/util/LinkedList;

    return-void
.end method

.method private declared-synchronized EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V
    .locals 1

    monitor-enter p0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private GetTimeStamp()D
    .locals 4

    .line 699
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)D
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->GetTimeStamp()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public HandleGotFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    return-void
.end method

.method public HandleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 628
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 631
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x45

    if-eq v0, v2, :cond_1

    const/16 v2, 0x51

    if-eq v0, v2, :cond_1

    const/16 v2, 0x42

    if-eq v0, v2, :cond_1

    const/16 v2, 0x43

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v1

    .line 690
    :cond_1
    :pswitch_0
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;

    invoke-direct {v0, p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIKeyEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Landroid/view/KeyEvent;)V

    invoke-direct {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public HandleLostFocus()V
    .locals 3

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    .line 455
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    .line 460
    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->MarkAsCancelled()V

    .line 461
    new-instance v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;

    invoke-direct {v2, p0, v1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;)V

    invoke-direct {p0, v2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public HandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 470
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 478
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/4 v4, 0x3

    if-eq v2, v3, :cond_7

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_a

    const/4 v5, 0x6

    if-eq v2, v5, :cond_7

    goto/16 :goto_3

    .line 590
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ltz v2, :cond_4

    if-lt v2, v0, :cond_3

    goto :goto_0

    .line 601
    :cond_3
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 610
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    if-eqz v0, :cond_d

    const/4 v1, 0x4

    .line 613
    invoke-virtual {v0, p1, v1, v2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->UpdateFromMotionEvent(Landroid/view/MotionEvent;II)V

    .line 614
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;

    invoke-direct {p1, p0, v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    goto/16 :goto_3

    :catch_0
    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    if-ge v1, v0, :cond_d

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 572
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 574
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    .line 575
    invoke-virtual {v2, p1, v3, v1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->UpdateFromMotionEvent(Landroid/view/MotionEvent;II)V

    .line 577
    new-instance v4, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;

    invoke-direct {v4, p0, v2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;)V

    invoke-direct {p0, v4}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ltz v2, :cond_9

    if-lt v2, v0, :cond_8

    goto :goto_2

    .line 540
    :cond_8
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 549
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    if-eqz v0, :cond_d

    .line 552
    invoke-virtual {v0, p1, v4, v2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->UpdateFromMotionEvent(Landroid/view/MotionEvent;II)V

    .line 553
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;

    invoke-direct {p1, p0, v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    goto :goto_3

    :catch_1
    :cond_9
    :goto_2
    return v1

    .line 486
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ltz v2, :cond_e

    if-lt v2, v0, :cond_b

    goto :goto_4

    .line 497
    :cond_b
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 504
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 506
    const-string v4, "UITouchTracker"

    const-string v5, "Invalid touch event!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_c
    new-instance v4, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    invoke-direct {v4, p0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    .line 517
    invoke-virtual {v4, p1, v0, v1, v2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->InitializeFromMotionEvent(Landroid/view/MotionEvent;III)V

    .line 519
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;

    invoke-direct {p1, p0, v4}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    :cond_d
    :goto_3
    return v3

    :catch_2
    :cond_e
    :goto_4
    return v1
.end method

.method public ProcessEvents(Ljava/nio/ByteBuffer;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 714
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 715
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/16 v1, 0x10

    .line 719
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 723
    monitor-enter p0

    move v1, v0

    .line 725
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 727
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;

    .line 729
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 730
    invoke-virtual {v2, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;->Serialize(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 745
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return v2

    :catchall_0
    move-exception p1

    .line 745
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onBackButtonPressed()V
    .locals 2

    .line 887
    const-string v0, "AndroidUIEventManager"

    const-string v1, "Back Button pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIBackButtonEvent;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIBackButtonEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    invoke-direct {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 765
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fling! VelX: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " VelY: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AndroidUIEventManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-boolean p2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 769
    :cond_0
    new-instance p2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v4, p1

    move-object v1, p2

    move-object v2, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIFlickEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;IIFF)V

    invoke-direct {p0, p2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 776
    const-string v0, "AndroidUIEventManager"

    const-string v1, "Long Press!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;

    invoke-direct {v0, p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UILongPressEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    return-void
.end method

.method public onPinch(Landroid/view/ScaleGestureDetector;)V
    .locals 13

    .line 862
    const-string p1, "Pinched!!"

    const-string v0, "AndroidUIEventManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    return-void

    .line 867
    :cond_0
    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->endScale:F

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->startScale:F

    sub-float/2addr p1, v2

    .line 870
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mTouches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;

    const/4 v3, 0x0

    .line 871
    aget-object v3, v2, v3

    const/4 v4, 0x1

    .line 872
    aget-object v2, v2, v4

    .line 873
    iget v4, v3, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    iget v5, v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    sub-float v9, v4, v5

    .line 874
    iget v4, v3, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    iget v5, v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    sub-float v10, v4, v5

    mul-float v4, v9, v9

    mul-float v5, v10, v10

    add-float v11, v4, v5

    .line 878
    iget v4, v3, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    iget v5, v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->X:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v12, v4, 0x2

    .line 879
    iget v3, v3, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    iget v2, v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UITouchTracker;->Y:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    div-int/2addr v2, v1

    .line 880
    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;

    move-object v3, v1

    move-object v4, p0

    move v5, v12

    move v6, v2

    move v7, v11

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIPinchEvent;-><init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;IIFF)V

    invoke-direct {p0, v1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->EnqueueEvent(Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;)V

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OnGesturePinch distX: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " DistY: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " centerX: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " centerY: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scaleDistSq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scaleDelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 801
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 803
    :cond_0
    const-string v0, "Scale!"

    const-string v2, "AndroidUIEventManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->endScale:F

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "StartCur: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->startScale:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " EndPrev: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->endScale:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->startScale:F

    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->endScale:F

    cmpl-float v4, v0, v3

    const v5, 0x3a03126f    # 5.0E-4f

    if-ltz v4, :cond_3

    sub-float/2addr v0, v3

    .line 811
    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->prevScaleMag:F

    cmpg-float v4, v0, v3

    if-ltz v4, :cond_2

    sub-float v3, v0, v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    const-string v1, "Pinch Detected!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->prevScaleMag:F

    .line 818
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->onPinch(Landroid/view/ScaleGestureDetector;)V

    goto :goto_2

    :cond_2
    :goto_0
    return v1

    :cond_3
    cmpg-float v4, v0, v3

    if-gez v4, :cond_6

    sub-float/2addr v0, v3

    .line 824
    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->prevScaleMag:F

    cmpl-float v4, v0, v3

    if-gtz v4, :cond_5

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    goto :goto_1

    .line 830
    :cond_4
    const-string v1, "Zoom detected!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->prevScaleMag:F

    .line 832
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->onPinch(Landroid/view/ScaleGestureDetector;)V

    goto :goto_2

    :cond_5
    :goto_1
    return v1

    :cond_6
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 841
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->mbAppHasFocus:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 843
    :cond_0
    const-string v0, "AndroidUIEventManager"

    const-string v1, "ScaleBegin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->startScale:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 851
    const-string p1, "AndroidUIEventManager"

    const-string v0, "ScaleEnd!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 852
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->prevScaleMag:F

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onZoom()V
    .locals 0

    return-void
.end method
