.class Lcom/mob/tools/a/e$49;
.super Lcom/mob/tools/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/e;->W()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/e$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/e;Ljava/lang/String;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/mob/tools/a/e$49;->a:Lcom/mob/tools/a/e;

    invoke-direct {p0, p2}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/mob/tools/a/e$49;->a:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/e;)Lcom/mob/tools/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/b;->ad()Ljava/lang/String;

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

    .line 581
    invoke-virtual {p0}, Lcom/mob/tools/a/e$49;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
