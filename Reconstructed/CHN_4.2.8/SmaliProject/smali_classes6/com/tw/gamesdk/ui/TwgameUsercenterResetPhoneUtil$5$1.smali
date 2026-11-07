.class Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5$1;
.super Ljava/lang/Object;
.source "TwgameUsercenterResetPhoneUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5$1;->this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5$1;->this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->getTwgameUsercenterResetPhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->doTwgameUsercenterResetPhoneDialog()V

    return-void
.end method
