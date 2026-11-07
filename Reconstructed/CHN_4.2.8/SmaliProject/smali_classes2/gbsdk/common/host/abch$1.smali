.class public Lgbsdk/common/host/abch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lgbsdk/common/host/abcc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cL:Lgbsdk/common/host/abch;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abch;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abch$1;->cL:Lgbsdk/common/host/abch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/apm/insight/log/VLog;->getInstance(Ljava/lang/String;)Lcom/apm/insight/log/ILog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apm/insight/log/ILog;->asyncFlush()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgbsdk/common/host/abfg;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apm/insight/log/VLog;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abfg;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/apm/insight/log/VLog;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    :goto_0
    return-void
.end method
