.class Lcom/mob/tools/a/e$4;
.super Lcom/mob/tools/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/e;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/e$a<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Lcom/mob/tools/a/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/e;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/mob/tools/a/e$4;->c:Lcom/mob/tools/a/e;

    iput-object p3, p0, Lcom/mob/tools/a/e$4;->a:Landroid/content/Intent;

    iput p4, p0, Lcom/mob/tools/a/e$4;->b:I

    invoke-direct {p0, p2}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/mob/tools/a/e$4;->c:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->b(Lcom/mob/tools/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/e$4;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/mob/tools/a/e$4;->b:I

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/f;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Lcom/mob/tools/a/e$4;->a()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method
