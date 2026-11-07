.class Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4$1;
.super Ljava/lang/Object;
.source "TwgameChangePwdUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4$1;->this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4$1;->this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    return-void
.end method
