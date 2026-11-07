.class Lcom/talkweb/twgame/TwGameSDK$1;
.super Ljava/lang/Object;
.source "TwGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/TwGameSDK;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

.field final synthetic val$mediaPostion:I


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/callback/MediaCallback;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/talkweb/twgame/TwGameSDK$1;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    iput p2, p0, Lcom/talkweb/twgame/TwGameSDK$1;->val$mediaPostion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    new-instance v0, Lcom/talkweb/twgame/TwGameSDK$1$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twgame/TwGameSDK$1$1;-><init>(Lcom/talkweb/twgame/TwGameSDK$1;)V

    iget v1, p0, Lcom/talkweb/twgame/TwGameSDK$1;->val$mediaPostion:I

    invoke-static {v0, v1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V

    return-void
.end method
