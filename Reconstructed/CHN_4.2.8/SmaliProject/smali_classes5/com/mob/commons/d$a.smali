.class Lcom/mob/commons/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    .line 635
    iput-object p1, p0, Lcom/mob/commons/d$a;->b:Ljava/lang/String;

    .line 636
    iput-object p2, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    .line 641
    iput-object p1, p0, Lcom/mob/commons/d$a;->c:[B

    .line 642
    iput-object p2, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 648
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/commons/d$a;->a:Z

    if-eqz v0, :cond_0

    .line 649
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/d$a;->c:[B

    iget-object v2, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mob/commons/cc/b;->a(Landroid/content/Context;[BLjava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/d$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/commons/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mob/commons/cc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 656
    :try_start_1
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/mob/commons/f;->b(ILjava/lang/Throwable;)V

    .line 657
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method
