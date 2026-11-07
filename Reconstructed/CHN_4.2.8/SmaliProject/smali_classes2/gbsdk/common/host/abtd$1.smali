.class public Lgbsdk/common/host/abtd$1;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "ShareCookieHostsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abtd;->S(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGU:Ljava/lang/String;

.field final synthetic aGV:Ljava/lang/String;

.field final synthetic aGW:Lgbsdk/common/host/abtd;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abtd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lgbsdk/common/host/abtd$1;->aGW:Lgbsdk/common/host/abtd;

    iput-object p3, p0, Lgbsdk/common/host/abtd$1;->aGU:Ljava/lang/String;

    iput-object p4, p0, Lgbsdk/common/host/abtd$1;->aGV:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lgbsdk/common/host/abtd$1;->aGW:Lgbsdk/common/host/abtd;

    iget-object v1, p0, Lgbsdk/common/host/abtd$1;->aGU:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abtd$1;->aGV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abtd;->T(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
