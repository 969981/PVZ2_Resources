.class Lcom/talkweb/twgame/tools/Tools$2;
.super Ljava/lang/Object;
.source "Tools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/tools/Tools;->startProgressDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "10\u79d2\u540e\u81ea\u52a8\u505c\u6b62\u5e7f\u544a\u8fdb\u5ea6\u6761!"

    .line 469
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    return-void
.end method
