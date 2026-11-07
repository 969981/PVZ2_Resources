.class Lcom/tw/gamesdk/ui/TwgameActivateUtil$1;
.super Ljava/lang/Object;
.source "TwgameActivateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameActivateUtil;->performLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V

    return-void
.end method
