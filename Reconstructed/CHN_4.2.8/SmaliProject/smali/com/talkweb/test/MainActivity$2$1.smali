.class Lcom/talkweb/test/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity$2;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$2$1;->this$1:Lcom/talkweb/test/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 2

    .line 92
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;

    .line 95
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;

    .line 96
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;->code:I

    const/16 p2, 0xfa0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0xfa1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$2$1;->this$1:Lcom/talkweb/test/MainActivity$2;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    const-string p2, "Init failed "

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$2$1;->this$1:Lcom/talkweb/test/MainActivity$2;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    const-string p2, "Init successful"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 101
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$2$1;->this$1:Lcom/talkweb/test/MainActivity$2;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    const-string p2, "1024"

    invoke-static {p1, p2, p2, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->userInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$2$1;->this$1:Lcom/talkweb/test/MainActivity$2;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance p2, Lcom/talkweb/test/MainActivity$2$1$1;

    invoke-direct {p2, p0}, Lcom/talkweb/test/MainActivity$2$1$1;-><init>(Lcom/talkweb/test/MainActivity$2$1;)V

    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    :goto_0
    return-void
.end method
