.class public final Lcom/bytedance/thanos/hdiff/HDifferHelper$1;
.super Ljava/lang/Object;
.source "HDifferHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/thanos/hdiff/HDifferHelper;->startAutoProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 88
    :goto_0
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    const/high16 v1, 0x42c60000    # 99.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    .line 89
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    invoke-static {v0}, Lcom/bytedance/thanos/hdiff/HDifferHelper;->updateProcess(F)V

    .line 90
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 92
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    float-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    goto :goto_1

    .line 93
    :cond_0
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 95
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    goto :goto_1

    .line 96
    :cond_1
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    const/high16 v2, 0x42be0000    # 95.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 98
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    float-to-double v0, v0

    const-wide v2, 0x3f9999999999999aL    # 0.025

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    goto :goto_1

    .line 99
    :cond_2
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 101
    sget v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    :cond_3
    :goto_1
    const-wide/16 v0, 0x64

    .line 103
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_4
    return-void
.end method
