.class Lcom/talkweb/test/MainActivity1$11$1;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity1$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity1$11;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity1$11;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$11$1;->this$1:Lcom/talkweb/test/MainActivity1$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 2

    .line 397
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;

    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;

    .line 399
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;->code:I

    const/16 p2, 0x1388

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1389

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$11$1;->this$1:Lcom/talkweb/test/MainActivity1$11;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$11;->this$0:Lcom/talkweb/test/MainActivity1;

    const-string p2, "User canceled exit "

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$11$1;->this$1:Lcom/talkweb/test/MainActivity1$11;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$11;->this$0:Lcom/talkweb/test/MainActivity1;

    const-string p2, "User exited games"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 402
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 403
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$11$1;->this$1:Lcom/talkweb/test/MainActivity1$11;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$11;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-virtual {p1}, Lcom/talkweb/test/MainActivity1;->finish()V

    :goto_0
    return-void
.end method
