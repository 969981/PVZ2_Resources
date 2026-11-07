.class public Lcom/popcap/pvz2cthddev/AndroidForJs;
.super Ljava/lang/Object;
.source "AndroidForJs.java"


# static fields
.field private static TAG:Ljava/lang/String; = "AndroidForJs"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidForJs;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addPlayTimes(Ljava/lang/String;II)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->addPlayTimes(Ljava/lang/String;II)V

    return-void
.end method

.method public closeWebview()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->RemoveViewContainer()V

    :cond_0
    return-void
.end method

.method public consumeCash(Ljava/lang/String;II)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->consumeCash(Ljava/lang/String;II)V

    return-void
.end method

.method public lottery(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->DoLottery(Ljava/lang/String;)V

    return-void
.end method

.method public openAd()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->DoOpenAd()V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 57
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidForJs;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidForJs;->context:Landroid/content/Context;

    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u94fe\u63a5"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public scoreStoreBuy(Ljava/lang/String;I)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->DoScoreStoreBuy(Ljava/lang/String;I)V

    return-void
.end method

.method public scoreStoreInfo(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->DoScoreStoreInfo(Ljava/lang/String;)V

    return-void
.end method

.method public settlement(Ljava/lang/String;III)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->CallSettlement(Ljava/lang/String;III)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidForJs;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showToast:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
