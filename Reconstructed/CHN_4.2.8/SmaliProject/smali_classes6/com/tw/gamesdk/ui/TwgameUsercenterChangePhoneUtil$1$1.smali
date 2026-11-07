.class Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1$1;
.super Ljava/lang/Object;
.source "TwgameUsercenterChangePhoneUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1$1;->this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1$1;->this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->getTwgameUsercenterResetPhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->doTwgameUsercenterResetPhoneDialog()V

    return-void
.end method
