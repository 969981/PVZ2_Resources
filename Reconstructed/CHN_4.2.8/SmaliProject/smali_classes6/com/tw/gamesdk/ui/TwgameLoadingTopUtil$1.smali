.class Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;
.super Ljava/lang/Object;
.source "TwgameLoadingTopUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

.field final synthetic val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u767b\u5f55:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
