.class public final Lgbsdk/common/host/abcz$1;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abcz;->a(Ljava/lang/String;Lgbsdk/common/host/abfn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic dm:Lgbsdk/common/host/abfn;


# direct methods
.method constructor <init>(Ljava/lang/String;ILgbsdk/common/host/abfn;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lgbsdk/common/host/abcz$1;->dm:Lgbsdk/common/host/abfn;

    iput-object p4, p0, Lgbsdk/common/host/abcz$1;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lgbsdk/common/host/abcz$1;->dm:Lgbsdk/common/host/abfn;

    iget-object v0, p0, Lgbsdk/common/host/abcz$1;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lgbsdk/common/host/abfn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abcz;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v0, "NPTH_CATCH"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
