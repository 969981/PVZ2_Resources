.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->setDisplayTime(Lcom/talkweb/twgame/bean/PositionVo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 0

    .line 2034
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2038
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2039
    new-instance v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21$1;-><init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21;)V

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
