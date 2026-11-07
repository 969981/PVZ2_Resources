.class Lcom/talkweb/twOfflineSdk/tools/MyRunnable$1;
.super Ljava/lang/Object;
.source "MyRunnable.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$1;->this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 1

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5fc3\u8df3\u53d1\u9001\u6570\u636e\u7ed9\u670d\u52a1\u5668\uff0c\u7b2c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$1;->this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->access$008(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6b21"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
