.class Lcom/talkweb/twOfflineSdk/record/RecordManager$1;
.super Ljava/lang/Thread;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/record/RecordManager;->addRecord(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/record/RecordManager;

.field final synthetic val$record:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/record/RecordManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/record/RecordManager$1;->this$0:Lcom/talkweb/twOfflineSdk/record/RecordManager;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/record/RecordManager$1;->val$record:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 107
    new-instance v0, Lcom/talkweb/twOfflineSdk/record/RecordDbHelper;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/record/RecordManager$1;->this$0:Lcom/talkweb/twOfflineSdk/record/RecordManager;

    .line 108
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/record/RecordManager;->access$000(Lcom/talkweb/twOfflineSdk/record/RecordManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/talkweb/twOfflineSdk/record/RecordDbHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/record/RecordDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "record"

    .line 113
    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/record/RecordManager$1;->val$record:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ALL_RECORD"

    .line 114
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 116
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecord catched Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    :cond_1
    throw v1
.end method
