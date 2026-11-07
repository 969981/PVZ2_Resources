.class public Lgbsdk/common/host/abch$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abch;->a(Ljava/lang/String;Lcom/apm/insight/CrashType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/abcb;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic cM:Lgbsdk/common/host/abfh;

.field final synthetic cN:Lcom/apm/insight/CrashType;

.field final synthetic cO:Lgbsdk/common/host/abch;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abch;Lgbsdk/common/host/abfh;Lcom/apm/insight/CrashType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abch$3;->cO:Lgbsdk/common/host/abch;

    iput-object p2, p0, Lgbsdk/common/host/abch$3;->cM:Lgbsdk/common/host/abfh;

    iput-object p3, p0, Lgbsdk/common/host/abch$3;->cN:Lcom/apm/insight/CrashType;

    iput-object p4, p0, Lgbsdk/common/host/abch$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lgbsdk/common/host/abfa;->au()Lgbsdk/common/host/abfa;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abch$3;->cM:Lgbsdk/common/host/abfh;

    iget-object v1, v1, Lgbsdk/common/host/abfh;->f:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abch$3;->cM:Lgbsdk/common/host/abfh;

    iget-object v2, v2, Lgbsdk/common/host/abfh;->e:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abch$3;->cM:Lgbsdk/common/host/abfh;

    iget-object v3, v3, Lgbsdk/common/host/abfh;->g:Ljava/lang/String;

    iget-object v4, p0, Lgbsdk/common/host/abch$3;->cM:Lgbsdk/common/host/abfh;

    iget-object v4, v4, Lgbsdk/common/host/abfh;->dW:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abfa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload ALog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abch$3;->cM:Lgbsdk/common/host/abfh;

    iget-object v2, v2, Lgbsdk/common/host/abfh;->dW:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abch$3;->c:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abhg;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
