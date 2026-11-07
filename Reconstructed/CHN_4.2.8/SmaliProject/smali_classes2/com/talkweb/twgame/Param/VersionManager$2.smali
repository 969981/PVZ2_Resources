.class Lcom/talkweb/twgame/Param/VersionManager$2;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Lcom/talkweb/twgame/net/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/Param/VersionManager;->getNewVerData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b0\u7248\u672c\u6570\u636e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Lcom/talkweb/twgame/Param/VersionManager;->access$000(Ljava/lang/String;)V

    .line 252
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 253
    sget-object p1, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-interface {p1}, Lcom/talkweb/twgame/Param/SyncTwgameCallback;->syncFinished()V

    goto :goto_0

    .line 255
    :cond_0
    sget p1, Lcom/talkweb/twgame/Param/VersionManager;->requestDataNum:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 257
    sget p1, Lcom/talkweb/twgame/Param/VersionManager;->requestDataNum:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/talkweb/twgame/Param/VersionManager;->requestDataNum:I

    .line 258
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->access$100()V

    goto :goto_0

    .line 260
    :cond_1
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 261
    sget-object p1, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-interface {p1}, Lcom/talkweb/twgame/Param/SyncTwgameCallback;->syncFinished()V

    :goto_0
    return-void
.end method
