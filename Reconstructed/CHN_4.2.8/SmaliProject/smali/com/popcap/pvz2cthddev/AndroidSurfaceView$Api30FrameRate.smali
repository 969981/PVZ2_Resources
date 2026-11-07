.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$Api30FrameRate;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30FrameRate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setFrameRate(Landroid/view/Surface;I)V
    .locals 1

    int-to-float p1, p1

    const/4 v0, 0x0

    .line 982
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V

    return-void
.end method
