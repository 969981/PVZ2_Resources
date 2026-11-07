.class public final Lcom/tencent/mm/opensdk/channel/MMessageActV2$SendResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/channel/MMessageActV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendResult"
.end annotation


# instance fields
.field public final actualLaunchMode:I

.field public final success:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$SendResult;->success:Z

    iput p2, p0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$SendResult;->actualLaunchMode:I

    return-void
.end method

.method static fail()Lcom/tencent/mm/opensdk/channel/MMessageActV2$SendResult;
    .locals 3

    new-instance v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$SendResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/opensdk/channel/MMessageActV2$SendResult;-><init>(ZI)V

    return-object v0
.end method
