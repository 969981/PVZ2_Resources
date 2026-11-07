.class public Lcom/apm/insight/runtime/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/a/b;->a(Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/apm/insight/runtime/a/b;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/a/b;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/runtime/a/b$1;->d:Lcom/apm/insight/runtime/a/b;

    iput-object p2, p0, Lcom/apm/insight/runtime/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/apm/insight/runtime/a/b$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/apm/insight/runtime/a/b$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/runtime/a/b$1;->d:Lcom/apm/insight/runtime/a/b;

    iget-object v1, p0, Lcom/apm/insight/runtime/a/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/apm/insight/runtime/a/b$1;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/apm/insight/runtime/a/b$1;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apm/insight/runtime/a/b;->a(Lcom/apm/insight/runtime/a/b;Ljava/lang/String;Ljava/lang/String;J)Lcom/apm/insight/runtime/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/insight/runtime/a/b$1;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/apm/insight/runtime/a/b$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/apm/insight/runtime/a/b$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/apm/insight/runtime/a/b$a;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/apm/insight/runtime/a/b$1;->c:J

    iput-wide v1, v0, Lcom/apm/insight/runtime/a/b$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    sget v0, Lgbsdk/common/host/abge;->q:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/runtime/a/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/apm/insight/runtime/a/b$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/apm/insight/runtime/a/b$1;->c:J

    const-string v4, "activityLifeCycle"

    invoke-static {v4, v0, v1, v2, v3}, Lcom/apm/insight/runtime/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
