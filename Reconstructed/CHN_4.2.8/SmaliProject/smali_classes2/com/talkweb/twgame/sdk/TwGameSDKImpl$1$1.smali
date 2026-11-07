.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1$1;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;->syncFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;

    iget-object v0, v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;->val$userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;

    iget-object v1, v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$000(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
