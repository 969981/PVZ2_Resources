.class Lcom/tw/gamesdk/ui/TwGameLoginUtil$4;
.super Ljava/lang/Object;
.source "TwGameLoginUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwGameLoginUtil;->requestSMSCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$4;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$4;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$200(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    return-void
.end method
