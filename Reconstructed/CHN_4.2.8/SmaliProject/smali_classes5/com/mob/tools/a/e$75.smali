.class Lcom/mob/tools/a/e$75;
.super Lcom/mob/tools/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/e;->a(IIZ)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/e$a<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/mob/tools/a/e;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/e;Landroid/location/Location;IIZ)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/mob/tools/a/e$75;->d:Lcom/mob/tools/a/e;

    iput p3, p0, Lcom/mob/tools/a/e$75;->a:I

    iput p4, p0, Lcom/mob/tools/a/e$75;->b:I

    iput-boolean p5, p0, Lcom/mob/tools/a/e$75;->c:Z

    invoke-direct {p0, p2}, Lcom/mob/tools/a/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/location/Location;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/mob/tools/a/e$75;->d:Lcom/mob/tools/a/e;

    invoke-static {v0}, Lcom/mob/tools/a/e;->a(Lcom/mob/tools/a/e;)Lcom/mob/tools/a/b;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/a/e$75;->a:I

    iget v2, p0, Lcom/mob/tools/a/e$75;->b:I

    iget-boolean v3, p0, Lcom/mob/tools/a/e$75;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/a/b;->a(IIZ)Landroid/location/Location;

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

    .line 851
    invoke-virtual {p0}, Lcom/mob/tools/a/e$75;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
