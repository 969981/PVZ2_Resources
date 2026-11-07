.class final Lcom/mob/commons/s$4;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/s;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 178
    iput-boolean p2, p0, Lcom/mob/commons/s$4;->a:Z

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 181
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/v;->i:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mob/commons/s$4;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/v;->a(Ljava/lang/String;I)V

    .line 182
    iget-boolean v0, p0, Lcom/mob/commons/s$4;->a:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/mob/commons/s;->h()V

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/mob/commons/s$4;->a:Z

    invoke-static {v0}, Lcom/mob/commons/s;->d(Z)V

    return-void
.end method
