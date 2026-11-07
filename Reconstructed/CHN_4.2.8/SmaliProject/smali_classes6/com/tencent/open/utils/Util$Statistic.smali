.class public Lcom/tencent/open/utils/Util$Statistic;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistic"
.end annotation


# instance fields
.field public reqSize:J

.field public response:Ljava/lang/String;

.field public rspSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    int-to-long v0, p2

    .line 238
    iput-wide v0, p0, Lcom/tencent/open/utils/Util$Statistic;->reqSize:J

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/tencent/open/utils/Util$Statistic;->rspSize:J

    :cond_0
    return-void
.end method
