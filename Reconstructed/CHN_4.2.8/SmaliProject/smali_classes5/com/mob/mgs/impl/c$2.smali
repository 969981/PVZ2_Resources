.class Lcom/mob/mgs/impl/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Z)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/mob/mgs/impl/c$2;->c:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mob/mgs/impl/c$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0xc8

    .line 315
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 316
    iget-object v0, p0, Lcom/mob/mgs/impl/c$2;->c:Lcom/mob/mgs/impl/c;

    iget-object v1, p0, Lcom/mob/mgs/impl/c$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;ZLjava/lang/String;)V

    .line 317
    iget-boolean v0, p0, Lcom/mob/mgs/impl/c$2;->b:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 318
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 319
    iget-object v0, p0, Lcom/mob/mgs/impl/c$2;->c:Lcom/mob/mgs/impl/c;

    invoke-virtual {v0}, Lcom/mob/mgs/impl/c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
