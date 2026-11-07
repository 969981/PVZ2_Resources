.class Lcom/talkweb/twOfflineSdk/record/RecordManager$2;
.super Ljava/lang/Object;
.source "RecordManager.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/record/RecordManager;->uploadRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/record/RecordManager;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/record/RecordManager;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/record/RecordManager$2;->this$0:Lcom/talkweb/twOfflineSdk/record/RecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/record/RecordManager$2;->this$0:Lcom/talkweb/twOfflineSdk/record/RecordManager;

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/record/RecordManager;->access$100(Lcom/talkweb/twOfflineSdk/record/RecordManager;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "processSyncPayRecordResult response is null"

    .line 499
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
