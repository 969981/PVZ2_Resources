.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/Param/SyncTwgameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->initGame(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;->val$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncFinished()V
    .locals 4

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1$1;-><init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
