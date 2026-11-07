.class Lcom/mob/tools/a/e$99;
.super Lcom/mob/tools/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/e;->aI()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/e$a<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/e;Landroid/content/Context;)V
    .locals 0

    .line 1081
    iput-object p1, p0, Lcom/mob/tools/a/e$99;->a:Lcom/mob/tools/a/e;

    invoke-direct {p0, p2}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/mob/tools/a/e$99;->a:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->b(Lcom/mob/tools/a/e;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/mob/tools/a/e$99;->a:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->b(Lcom/mob/tools/a/e;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e$99;->a:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/e;)Lcom/mob/tools/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/b;->V()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1089
    iget-object v1, p0, Lcom/mob/tools/a/e$99;->a:Lcom/mob/tools/a/e;

    invoke-static {v1, v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/e;Landroid/content/Context;)Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/mob/tools/a/e$99;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
