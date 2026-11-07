.class final Lcom/tencent/bugly/proguard/ay$1$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ay$1;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/bugly/proguard/ay$1;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ay$1;Ljava/lang/String;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ay$1$1;->b:Lcom/tencent/bugly/proguard/ay$1;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ay$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 465
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay$1$1;->b:Lcom/tencent/bugly/proguard/ay$1;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay$1;->a:Lcom/tencent/bugly/proguard/ay;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ay$1$1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1392
    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1399
    :try_start_0
    const-string v2, "read trace first dump for create time!"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1401
    invoke-static {v1, v3}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v2

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_0

    .line 1403
    iget-wide v6, v2, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    cmp-long v2, v6, v4

    if-nez v2, :cond_1

    .line 1408
    const-string v2, "trace dump fail could not get time!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1412
    :cond_1
    invoke-virtual {v0, v6, v7}, Lcom/tencent/bugly/proguard/ay;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 1416
    :cond_2
    invoke-virtual {v0, v6, v7, v1}, Lcom/tencent/bugly/proguard/ay;->a(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1418
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1421
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "handle anr error %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
