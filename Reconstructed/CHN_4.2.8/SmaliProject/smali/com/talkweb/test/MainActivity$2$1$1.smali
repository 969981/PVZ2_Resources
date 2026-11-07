.class Lcom/talkweb/test/MainActivity$2$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity$2$1;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/talkweb/test/MainActivity$2$1;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity$2$1;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$2$1$1;->this$2:Lcom/talkweb/test/MainActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyFinished(ZZ)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/talkweb/test/MainActivity$2$1$1;->this$2:Lcom/talkweb/test/MainActivity$2$1;

    iget-object v0, v0, Lcom/talkweb/test/MainActivity$2$1;->this$1:Lcom/talkweb/test/MainActivity$2;

    iget-object v0, v0, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "isVerified"

    goto :goto_0

    :cond_0
    const-string p1, "not verified"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "\u662f\u672a\u6210\u5e74\u4eba"

    goto :goto_1

    :cond_1
    const-string p1, "\u662f\u6210\u5e74\u4eba"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
