.class Lcom/talkweb/test/MainActivity1$2$1;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity1$2;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity1$2;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$2$1;->this$1:Lcom/talkweb/test/MainActivity1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preLogin onFailure code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainAct"

    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "MainAct"

    const-string v1, "preLogin onSuccess"

    .line 137
    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
