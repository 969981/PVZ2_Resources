.class Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1$1;
.super Ljava/lang/Object;
.source "TwMultiPayDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1$1;->this$2:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 205
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$202(Z)Z

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u65f6\u95f4\u5df2\u7ecf\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$300()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
